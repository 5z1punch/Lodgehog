# -*- coding: UTF-8 -*-
import sys
import shutil
import os
from oat_repacker import init, pack_helper, oat_opt
from method_rewritor import injector
from loguru import logger
import frida_controller.controller
import project
import traceback

opt_tmp = os.path.join(os.path.dirname(os.path.realpath(__file__)),"tmp")

def main():
    print("usage: python runner.py path_to_app.apk app_package_name java_package_name_for_monitor_split_by_comma")
    apk_path = sys.argv[1]
    package_name = sys.argv[2]
    apk_filename = os.path.basename(apk_path)
    # unpack apk
    unpack_dir, smali_dir = pack_helper.apk2smali(apk_path)
    project.PROPERTY[project.D_DIR] = unpack_dir
    project.PROPERTY[project.S_DIR] = smali_dir
    # TODO
    # AXML parser & get target_java_packages
    pass
    # inject log
    # target_java_packages = ["com.grammarly"]
    target_java_packages = sys.argv[3].split(",")
    repack_smali_dir = smali_dir + "_repack"
    project.PROPERTY[project.RS_DIR] = repack_smali_dir
    if injector.DEBUG:
        if project.check_file(project.RS_DIR):
            shutil.rmtree(repack_smali_dir)
        injector.injectPackageInMulDex(smali_dir, target_java_packages, repack_smali_dir)
    else:
        if not project.check_file(project.RS_DIR):
            injector.injectPackageInMulDex(smali_dir, target_java_packages, repack_smali_dir)
    if not project.check_file(project.RS_APK):
        # pack to dex
        pack_helper.smali2dex(repack_smali_dir, unpack_dir)
        # repack
        output_apk = pack_helper.repack_apk(unpack_dir)
        project.PROPERTY[project.RS_APK] = output_apk
    else:
        output_apk = project.PROPERTY[project.RS_APK]
    # init android env
    init.init_vm_env()
    # install app and inject payload odex
    if not project.check_file(project.O_ODEX):
        app_dir, oat_path, origin_odex = init.deploy_app(apk_path, package_name)
        project.PROPERTY[project.A_DIR] = app_dir
        project.PROPERTY[project.OAT] = oat_path
        project.PROPERTY[project.O_ODEX] = origin_odex
    else:
        app_dir = project.PROPERTY[project.A_DIR]
        oat_path = project.PROPERTY[project.OAT]
        origin_odex = project.PROPERTY[project.O_ODEX]
    if not project.check_file(project.RP_ODEX):
        repack_odex, repack_patched_odex = oat_opt.inject_oat(app_dir, oat_path, package_name, output_apk, origin_odex)
        project.PROPERTY[project.R_ODEX] = repack_odex
        project.PROPERTY[project.RP_ODEX] = repack_patched_odex
    else:
        repack_odex = project.PROPERTY[project.R_ODEX]
        repack_patched_odex = project.PROPERTY[project.RP_ODEX]
        logger.info("Check the md5 of odex between device and local")
        if not oat_opt.repack_odex_check(oat_path, repack_patched_odex):
            logger.warning("md5 is different, Please Terminate the app and press enter to replace odex")
            input()
            oat_opt.replace_odex_only(app_dir, oat_path, repack_patched_odex)
    # setup app manually
    logger.info("Please setup your app manually.and wait for ")
    logger.info("And wait for stable running to reduce dirty data")
    input("Input any key to continue:")
    # frida attach
    while(True):
        try:
            frida_controller.controller.frida_attach(package_name, smali_dir)
        except KeyboardInterrupt:
            logger.info("Have fun. exit.")
            break
        except Exception as e:
            logger.error("frida throw error:")
            logger.error(e)
            traceback.print_exc()
            logger.info("check and fix exception then press any key to attach frida agina")
            input()
if __name__ == '__main__':
    main()