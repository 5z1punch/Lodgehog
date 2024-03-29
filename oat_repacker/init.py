import os
from adb_controller import adb
from loguru import logger
import env
import time

def init_vm_env():
    status, exec_ret = adb.exec_shell("getprop dalvik.vm.usejit")
    usejit = exec_ret.strip()
    status, exec_ret = adb.exec_shell("getprop dalvik.vm.usejitprofiles")
    usejitprofiles = exec_ret.strip()
    if usejit != "false" or usejitprofiles != "false":    
        with open(os.path.join(os.path.dirname(os.path.realpath(__file__)),"adb_script","init_vm_env.sh")) as shfile:
            if adb.exec_shell(f"'{shfile.read()}'")[0]:
                logger.info("disable dalvik jit and jit profiles")
                # wait_start = 10
                # logger.info(f"wait {wait_start}s for android restart")
                # time.sleep(wait_start)
                print(f"wait for android restart, press Enter to continue")
                input()
                logger.info(f"wait is over. If your phone is still loading, adjust waiting time manually.")
            else:
                logger.error("set android system env failed!")
                assert(False)

def deploy_app(apk_path, package_name):
    logger.info(f"install {apk_path}")
    if adb.check_installed(package_name) or adb.install(apk_path):
        status, exec_ret = adb.exec_shell(f"find /data/app/ -maxdepth 1 -name {package_name}-*")
        if status:
            app_dir = exec_ret.strip()
        elif not status or exec_ret.strip()=="":
            logger.error(f"can't find {package_name} app dir")
            return None
        for i in range(2):
            status, exec_ret = adb.exec_shell(f"find {app_dir}/oat/ -name base.odex")
            if exec_ret and exec_ret.strip() and status:
                oat_path = exec_ret.strip()
                break
            else:
                if i==0:
                    logger.info("base.odex does not exist, reset base.odex")
                    adb.oat_compile(package_name)
                else:
                    logger.error(f"can't complile oat for {package_name}")
                    return None
        local_odex = os.path.join(env.TMPPATH, "origin.odex")
        if adb.pull_file(oat_path, local_odex):
            return app_dir, oat_path, local_odex
    return None