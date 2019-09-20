import json
import os
import env
import atexit

PROPERTY = {}

O_ODEX = "origin_odex"
R_ODEX = "repack_odex"
RP_ODEX = "repack_patched_odex"
O_APK = "origin_apk"
R_APK = "repack_apk"
RS_APK = "resigned_apk"
S_DIR = "smali_dir"
D_DIR = "unpack_dir"
RS_DIR = "repack_smali_dir"
A_DIR = "app_dir"
OAT = "oat_path"

if os.path.exists(env.PROJECTJSON):
    with open(env.PROJECTJSON) as pjfile:
        PROPERTY = json.loads(pjfile.read())

def save():
    with open(env.PROJECTJSON, "w") as pjfile:
        pjfile.write(json.dumps(PROPERTY))

atexit.register(save)

def check_file(key):
    global PROPERTY
    if key in PROPERTY:
        if os.path.exists(PROPERTY[key]):
            return True
    return False
