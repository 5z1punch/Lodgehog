import frida
import sys


def genFridaScript(cmd):
    code = f'var xCmd="{cmd}";\n'
    with open(".\\frida_scripts\\flowLogController.js") as fs:
        code += fs.read()
    return code


def runCmd(package_name, cmd):
    print(f"attach {package_name} and run cmd {cmd}")
    process = frida.get_usb_device().attach(package_name)
    script = process.create_script(genFridaScript(cmd))
    script.load()
    print(f"cmd {cmd} finished")


if __name__ == '__main__':
    package_name = sys.argv[1]
    cmd = sys.argv[2]
    runCmd(package_name, cmd)
