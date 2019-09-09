import frida
import sys
import env

from static_analyzer import searchForJsonSDK
import os

SCRIPTPATH = os.path.join(env.FRIDAPATH, "frida_script")

def attach(package_name):
    print(f"attach {package_name}")
    process = frida.get_usb_device().attach(package_name)
    return process


def get_handle_json_scripts(sourceDir):
    json_finded = searchForJsonSDK.search_for_package(sourceDir)
    script_text = ""
    for f in json_finded:
        if json_finded[f]:
            # for kuaishou
            if f == "gson":
                f = "gson_for_kuaishou"
            filepath = os.path.join(SCRIPTPATH, "handle_json", f + ".js")
            with open(filepath) as script_file:
                script_text += script_file.read() + "\n"
    filepath = os.path.join(SCRIPTPATH, "handle_json", "org.json.js")
    with open(filepath) as script_file:
        script_text += script_file.read() + "\n"
    return script_text


def get_handle_scripts(handle_name_list):
    script_text = ""
    for handle_name in handle_name_list:
        filepath = os.join.path(SCRIPTPATH, handle_name+".js")
        with open(filepath) as file:
            script_text += file.read() + "\n"
    return script_text


def load_scripts(process, sourceDir):
    script_text = ""
    script_text += get_handle_json_scripts(sourceDir)
    handle_name_list = [
        "hook_pattern_option",
        "hook_url_option"
    ]
    script_text += get_handle_scripts(handle_name_list)
    script = process.create_script(script_text)
    script.load()

def frida_attach(package_name, smali_dir):
    process = attach(package_name)
    load_scripts(process, smali_dir)
    print("==================")
    print("+++ Log  Start +++")
    print("==================")
    sys.stdin.read()

if __name__ == '__main__':
    package_name = "com.smile.gifmaker"
    process = attach(package_name)
    sourceDir = "D:\\ZIYA\\kuaishou_test\\TestApp_smali"
    load_scripts(process, sourceDir)
    sys.stdin.read()
