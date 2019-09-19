import frida
import sys
import env
from inject_vector.controller.logController import runCmd
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


def loads_from_list(script_list):
    script_text = ""
    for script_fd in script_list:
        script_fd_path = os.path.join(SCRIPTPATH, script_fd)
        if os.path.isdir(script_fd_path):
            for file in os.listdir(script_fd_path):
                if os.path.isfile(file):
                    with open(os.path.join(script_fd_path, file)) as sfpf:
                        script_text += sfpf.read() + "\n"
        else:
            with open(script_fd_path) as sfpf:
                script_text += sfpf.read() + "\n"
    return script_text


def load_scripts(process, sourceDir):
    script_text = ""
    handle_name_list = [
        "utils/utils.js",
        "utils/init.js",
        "frida_caller.js",
        "hook_pattern_option.js",
        "hook_url_option.js",
        "hook_text_option.js",
    ]
    script_text += loads_from_list(handle_name_list)
    script_text += get_handle_json_scripts(sourceDir)
    script = process.create_script(script_text)
    script.load()

def frida_attach(package_name, smali_dir):
    process = attach(package_name)
    load_scripts(process, smali_dir)
    print("==================")
    print("+++ Log  Start +++")
    print("==================")
    runCmd("startLog", process)
    sys.stdin.read()

if __name__ == '__main__':
    package_name = "com.smile.gifmaker"
    process = attach(package_name)
    sourceDir = "D:\\ZIYA\\kuaishou_test\\TestApp_smali"
    load_scripts(process, sourceDir)
    sys.stdin.read()
