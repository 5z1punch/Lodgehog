from adb_controller import adb
import os
from loguru import logger
import env
from oat_repacker import pack_helper

def replace_base_apk(app_dir, repack_apk):
    if adb.push_file(repack_apk):
        repack_apk_remote = '/sdcard/' + os.path.basename(repack_apk)
        # bak origin base.apk
        if adb.exec_shell(f"mv {app_dir}/base.apk {app_dir}/base.apk.bak")[0]:
            if adb.exec_shell(f"mv {repack_apk_remote} {app_dir}/base.apk")[0]:
                return True
    logger.error(f"replace {app_dir}/base.apk failed")
    return False

def get_repack_odex(oat_path, package_name, output_path):
    if adb.oat_compile(package_name, "everything"):
        if adb.pull_file(oat_path, output_path):
            return True
    logger.error(f"compile repacked odex failed")
    return False

def replace_base_odex(oat_path, app_dir, repack_oat):
    if adb.push_file(repack_oat):
        repack_odex_remote = '/sdcard/'+os.path.basename(repack_oat)
        if adb.exec_shell(f"mv {repack_odex_remote} {oat_path}")[0]:
            # recover base.apk
            if adb.exec_shell(f"mv {app_dir}/base.apk.bak {app_dir}/base.apk")[0]:
                return True
    logger.error(f"replace base odex failed")
    return False

def inject_oat(app_dir, oat_path, package_name, repack_apk, origin_oat):
    if replace_base_apk(app_dir, repack_apk):
        output_path = os.path.join(env.TMPPATH, "repack.odex")
        if get_repack_odex(oat_path, package_name, output_path):
            patched_odex_path = pack_helper.replace_odex_checksum_enter(origin_oat, output_path)
            if replace_base_odex(oat_path, app_dir, patched_odex_path):
                logger.success("inject payload odex success")
                return True
    return False