from subprocess import run, PIPE
import shlex
from loguru import logger
import os

ADB = 'adb'

def run_opt(tag, commands):
    completedProcess = run(commands, stdout=PIPE, stderr=PIPE, text=True)
    if completedProcess.returncode == 0:
        return True, completedProcess.stdout
    else:
        logger.error(f"[x] {tag} command run error: "+completedProcess.stderr)
        return False, completedProcess.stderr

def start_server():
    return run_opt("start_server", [ADB, "start-server"])[0]
    
def push_file(file_path, target_path="/sdcard/", root=False):
    logger.info(f"[*] push {file_path} to {target_path}")
    if file_path.startswith("/data/data") or file_path.startswith("/data/app"):
        root = True
    if root:
        file_name = os.path.basename(file_path)
        tmp_path = f"/data/local/tmp/{file_name}"
        if run_opt("file_push", [ADB, "push", file_path, tmp_path])[0]:
            if exec_shell(f"cp {tmp_path} {target_path}")[0]:
                exec_shell(f"rm {tmp_path}")
                return True
    else:
        return run_opt("file_push", [ADB, "push", file_path, target_path])[0]
    return False

def pull_file(file_path, target_path, root=False):
    logger.info(f"[*] pull {file_path} to {target_path}")
    if file_path.startswith("/data/data") or file_path.startswith("/data/app"):
        root = True
    if root:
        file_name = os.path.basename(file_path)
        tmp_path = f"/data/local/tmp/{file_name}"
        if exec_shell(f"cp {file_path} {tmp_path}")[0] and exec_shell(f"chmod 777 {tmp_path}")[0]:
            if run_opt("file_pull", [ADB, "pull", tmp_path, target_path])[0]:
                exec_shell(f"rm {tmp_path}")
                return True
    else:
        return run_opt("file_pull", [ADB, "pull", file_path, target_path])[0]
    return False

def exec_shell(shell, as_root = True):
    shell = shlex.split(shell) if not as_root else ["su", "-c", shell]
    return run_opt("run_shell", [ADB, "shell"] + shell)

def install(apk_path, replace=False):
    if replace:
        cmd = [ADB, "install", "-r", apk_path]
    else:
        cmd = [ADB, "install", apk_path]
    return run_opt("install_apk", cmd)[0]

def check_installed(package_name):
    run_return = exec_shell(f"dumpsys package --checkin {package_name}")
    if run_return[0] and package_name in run_return[1]:
        logger.info(f"{package_name} already installed")
        return True
    else:
        return False

def oat_compile(package_name, mode="reset"):
    logger.info(f"re compile the odex for {package_name} use mode {mode}")
    if mode=="reset":
        return run_opt("oat_compile", [ADB, "shell", "-t", "su", "-c" ,f"cmd package compile --reset {package_name}"])[0]
    else:
        return run_opt("oat_compile",[ADB, "shell", "-t", "su", "-c", f"cmd package compile -m {mode} -f -c {package_name}"])[0]
