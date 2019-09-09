import sys
import shutil
import os
from oat_repacker import init, pack_helper, oat_opt
from method_rewritor import injector
from loguru import logger
import frida_controller.controller

opt_tmp = os.path.join(os.path.dirname(os.path.realpath(__file__)),"tmp")

def main():
    apk_path = sys.argv[1]
    package_name = sys.argv[2]
    apk_filename = os.path.basename(apk_path)
    # unpack apk
    unpack_dir, smali_dir = pack_helper.apk2smali(apk_path)
    # TODO
    # AXML parser & get target_java_packages
    pass
    # inject log
    target_java_packages = ["com.immomo.momo"]
    repack_smali_dir = smali_dir + "_repack"
    if injector.DEBUG:
        if os.path.exists(repack_smali_dir):
            shutil.rmtree(repack_smali_dir)
        injector.injectPackageInMulDex(smali_dir, target_java_packages, repack_smali_dir)
    else:
        if not os.path.exists(repack_smali_dir):
            injector.injectPackageInMulDex(smali_dir, target_java_packages, repack_smali_dir)
    # pack to dex
    pack_helper.smali2dex(repack_smali_dir, unpack_dir)
    # repack
    output_apk = pack_helper.repack_apk(unpack_dir)
    # init android env
    init.init_vm_env()
    # install app and inject payload odex
    app_dir, oat_path, origin_odex = init.deploy_app(apk_path, package_name)
    oat_opt.inject_oat(app_dir, oat_path, package_name, output_apk, origin_odex)
    # setup app manually
    logger.info("Please setup your app manually.and wait for ")
    logger.info("And wait for stable running to reduce dirty data")
    input("Input any key to continue:")
    # frida attach
    frida_controller.controller.frida_attach(package_name, smali_dir)

if __name__ == '__main__':
    main()