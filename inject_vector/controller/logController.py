import frida
import sys
import env
import os


def genFridaScript(cmd):
    code = f'var xCmd="{cmd}";\n'
    scriptPath = os.path.join(os.path.dirname(__file__), "frida_scripts")
    with open(os.path.join(scriptPath, "fridaCallerController.js")) as fs:
        code += fs.read()
    return code


def runCmd(cmd, process=None, package_name=None):
    assert(process or package_name)
    if package_name:
        print(f"attach {package_name} and run cmd {cmd}")
        process = frida.get_usb_device().attach(package_name)
    else:
        print(f"run cmd {cmd} in current frida process")
    script = process.create_script(genFridaScript(cmd))
    script.load()
    print(f"cmd {cmd} finished")


if __name__ == '__main__':
    package_name = sys.argv[1]
    cmd = sys.argv[2]
    runCmd(cmd, None, package_name)
