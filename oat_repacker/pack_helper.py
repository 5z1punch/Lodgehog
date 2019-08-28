import stat
import subprocess
import sys
from loguru import logger
import os
import lief.OAT
import struct
import re


def unpack_apk(apk_path, output_dir):
    logger.info(f"unpack apk {apk_path} to {output_dir}:")
    try:
        cmd = f".\\apktool\\apktool.bat d -r -s -m -o {output_dir} {apk_path} "
        subprocess.check_call(cmd, shell=True)
    except Exception as e:
        logger.error(e)


def dex2smali(unpack_dir, output_dir):
    logger.info(f"convert dex to smali")
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    files = os.listdir(unpack_dir)
    for file in files:
        if os.path.isfile(os.path.join(unpack_dir, file)):
            find = re.findall(r"classes(\d*)\.dex", file)
            if find:
                logger.info(f"baksmali {file}")
                dex_id = find[0]
                dex_path = os.path.join(unpack_dir, file)
                smali_path = os.path.join(output_dir, "smali" + dex_id)
                try:
                    cmd = f"java -jar ./smali/baksmali-2.2.7.jar d {dex_path} -o {smali_path} --pr false"
                    subprocess.check_call(cmd, shell=True)
                    # os.chmod(smali_path, 0o777)
                    # cmd = f"icacls {smali_path} /Q /T /grant Everyone:F"
                    # subprocess.check_call(cmd, shell=True)
                except Exception as e:
                    logger.error(e)


def smali2dex(smali_dir, unpack_dir):
    logger.info("convert smali to dex")
    for file in os.listdir(smali_dir):
        if file.startswith("xsmali") and os.path.isdir(os.path.join(smali_dir, file)):
            logger.info(f"find changed smali {file}")
            find = re.findall(r"xsmali(\d*)", file)
            assert find
            try:
                outdex = os.path.join(unpack_dir, "classes" + find[0] + ".dex")
                logger.info(f"overwrite dex {outdex}")
                if os.path.exists(outdex):
                    os.remove(outdex)
                cmd = f"java -jar ../smali/smali/build/libs/smali-2.2.7-76867f0a-dirty-fat.jar a -a 25 -o {outdex} {os.path.join(smali_dir, file)}"
                subprocess.check_call(cmd, shell=True)
            except Exception as e:
                logger.error(e)


def repack_apk(unpack_dir, output_apk):
    logger.info(f"repack {unpack_dir} to {output_apk}:")
    repack_apk_path = "./tmp/" + os.path.basename(unpack_dir) + ".apk"
    if os.path.exists(repack_apk_path):
        os.remove(repack_apk_path)
    try:
        repackcmd = f".\\apktool\\apktool.bat b {unpack_dir} -o {repack_apk_path}"
        subprocess.check_call(repackcmd, shell=True)
        signcmd = f"jarsigner -verbose -keystore demo.keystore -signedjar {output_apk} -storepass 123456 {repack_apk_path} demo.keystore"
        subprocess.check_call(signcmd, shell=True)
    except Exception as e:
        logger.error(e)


def parse_oat_for_odex_checksum(oat_file_binary):
    logger.info(f"parse oat {oat_file_binary.name}")
    oatdata_offset = oat_file_binary.get_dynamic_symbol("oatdata").value
    dex_count = struct.unpack("<I",
                              bytearray(oat_file_binary.get_content_from_virtual_address(oatdata_offset + 0x14, 4)))[0]
    logger.info(f"odex has {dex_count} dexs")
    kvstore_offset = oatdata_offset + 0x44
    kvstore_len = struct.unpack("<I", bytearray(oat_file_binary.get_content_from_virtual_address(kvstore_offset, 4)))[0]
    dex_info_offset = kvstore_offset + 4 + kvstore_len
    dex_checksum_set = {}
    current_offset = dex_info_offset
    for i in range(0, dex_count):
        filename_len = struct.unpack("<I",
                                     bytearray(oat_file_binary.get_content_from_virtual_address(current_offset, 4)))[0]
        filename = bytearray(oat_file_binary.get_content_from_virtual_address(current_offset + 4, filename_len)).decode(
            "utf8")
        checksum_offset = current_offset + 4 + filename_len
        checksum = oat_file_binary.get_content_from_virtual_address(checksum_offset, 4)
        dex_checksum_set[filename] = (checksum_offset, checksum)
        logger.info(f"In odex: dex {filename}, checksum {checksum}, checksum offset {checksum_offset}")
        current_offset = checksum_offset + 0x10
    return dex_checksum_set


def replace_odex_checksum_enter(origin_odex_path, payload_odex_path):
    logger.info("patching odex file for dex checksum")
    origin_odex = lief.OAT.parse(origin_odex_path)
    payload_odex = lief.OAT.parse(payload_odex_path)
    replace_odex_checksum(origin_odex, payload_odex)
    logger.info(f"save patched odex file to {payload_odex_path}")
    if os.path.exists(payload_odex_path + ".patched"):
        os.remove(payload_odex_path + ".patched")
    payload_odex.write(payload_odex_path + ".patched")


def replace_odex_checksum(origin_odex, payload_odex):
    logger.info(f"patch checksum of {payload_odex.name}")
    origin_odex_checksum_set = parse_oat_for_odex_checksum(origin_odex)
    payload_odex_checksum_set = parse_oat_for_odex_checksum(payload_odex)
    for key in payload_odex_checksum_set:
        origin_checksum = origin_odex_checksum_set[key][1]
        payload_checksum_offset = payload_odex_checksum_set[key][0]
        payload_odex.patch_address(payload_checksum_offset, origin_checksum)

def main():
    origin_apk_file = sys.argv[1]
    pass


if __name__ == '__main__':
    # main()
    # unpack_apk("D:\\ZIYA\\TestApp\\app\\build\\outputs\\apk\\debug\\app-debug.apk", "D:\\ZIYA\\TestApp_option")
    # dex2smali("D:\\ZIYA\\TestApp_option","d:\\ZIYA\\TestApp_smali")
    # smali2dex("D:\\ZIYA\\TestApp_repack_smali","D:\\ZIYA\\TestApp_option")
    # smali2dex("D:\\ZIYA\\momo_test\\TestApp_repack_smali", "D:\\ZIYA\\momo_test\\TestApp_option")
    # repack_apk("D:\\ZIYA\\TestApp_option","D:\\ZIYA\\repack_debug_app.apk")
    replace_odex_checksum_enter("D:\\ZIYA\\kuaishou_test\\origin.odex", "D:\\ZIYA\\kuaishou_test\\payload.odex")
    ###
    # repack_apk("D:\\ZIYA\\kuaishou_test\\origin","D:\\ZIYA\\kuaishou_test\\r.apk")
