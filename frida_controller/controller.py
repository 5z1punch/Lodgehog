import frida
import sys

sys.path.append('.')
import searchForJsonSDK
import os


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
            with open('frida-script' + os.sep + "handle_json" + os.sep + f + ".js") as script_file:
                script_text += script_file.read() + "\n"
    with open('frida-script' + os.sep + "handle_json" + os.sep + "org.json.js") as script_file:
        script_text += script_file.read() + "\n"
    return script_text


def get_handle_scripts(handle_name_list):
    script_text = ""
    for handle_name in handle_name_list:
        with open('frida-script' + os.sep + handle_name + ".js") as file:
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


if __name__ == '__main__':
    package_name = "com.smile.gifmaker"
    process = attach(package_name)
    sourceDir = "D:\\ZIYA\\kuaishou_test\\TestApp_smali"
    load_scripts(process, sourceDir)
    sys.stdin.read()
