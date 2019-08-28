import os
from adb_controller import adb
from loguru import logger

opt_tmp = os.path.join(os.path.dirname(os.path.realpath(__file__)),"tmp")

def init_vm_env():
    status, exec_ret = adb.exec_shell("getprop dalvik.vm.usejit")
    usejit = exec_ret.strip()
    status, exec_ret = adb.exec_shell("getprop dalvik.vm.usejitprofiles")
    usejitprofiles = exec_ret.strip()
    if usejit != "false" or usejitprofiles != "false":    
        with open(os.path.join("adb_script","init_vm_env.sh")) as shfile:
            adb.exec_shell(shfile.read())
    logger.info("disable dalvik jit and jit profiles")

def deploy_app(apk_path, package_name):
    if adb.install(apk_path):
        status, exec_ret = adb.exec_shell(f"find /data/app/ -maxdepth 1 -name {package_name}-*")
        if status:
            app_dir = exec_ret.strip()
        elif not status or exec_ret.strip()=="":
            logger.error(f"can't find {package_name} app dir")
            return False
        for i in range(2):
            status, exec_ret = adb.exec_shell(f"find {app_dir}/oat/ -name base.odex")
            if status:
                oat_path = exec_ret.strip()
                break
            elif not status or exec_ret.strip()=="":
                if i==0:
                    adb.oat_compile(package_name)
                else:
                    logger.error(f"can't complile oat for {package_name}")
                    return False
        if adb.pull_file(oat_path, os.path.join(opt_tmp, "origin.odex")):
            return True
    return False