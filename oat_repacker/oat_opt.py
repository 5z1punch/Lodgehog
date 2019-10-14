from adb_controller import adb
import os
from loguru import logger
import env
from oat_repacker import pack_helper
import hashlib

def recover_permission(file_path):
    ch_command = f"chown system {file_path} && chgrp system {file_path} && chmod 644 {file_path}"
    return adb.exec_shell(f"'{ch_command}'")

def replace_base_apk(app_dir, repack_apk):
    if adb.push_file(repack_apk):
        repack_apk_remote = '/sdcard/' + os.path.basename(repack_apk)
        # bak origin base.apk
        if adb.exec_shell(f"mv {app_dir}/base.apk {app_dir}/base.apk.bak")[0]:
            if adb.exec_shell(f"mv {repack_apk_remote} {app_dir}/base.apk")[0]:
                recover_permission(f"{app_dir}/base.apk")
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
        if adb.exec_shell(f"cp {repack_odex_remote} {oat_path}")[0]:
            adb.exec_shell(f"rm {repack_odex_remote}")
            # recover base.apk
            if adb.exec_shell(f"mv {app_dir}/base.apk.bak {app_dir}/base.apk")[0]:
                adb.exec_shell(f"touch -acmr {app_dir}/base.apk {oat_path}")
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
                return output_path, patched_odex_path
    return None

def repack_odex_check(oat_path, repack_oat):
    status, origin_md5 = adb.exec_shell(f"md5sum {oat_path}")
    # print(origin_md5)
    if status:
        with open(repack_oat, "rb") as f:
            repack_md5 = hashlib.md5(f.read()).hexdigest()
            if repack_md5 in origin_md5:
                return True
            else:
                return False

def replace_odex_only(app_dir, oat_path, repack_oat):
    if adb.push_file(repack_oat):
        repack_odex_remote = '/sdcard/'+os.path.basename(repack_oat)
        if adb.exec_shell(f"cp {repack_odex_remote} {oat_path}")[0]:
            adb.exec_shell(f"rm {repack_odex_remote}")
            adb.exec_shell(f"touch -acmr {app_dir}/base.apk {oat_path}")
            return True
    logger.error(f"replace base odex failed")
    return False