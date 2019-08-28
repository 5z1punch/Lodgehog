from subprocess import run, PIPE
import shlex
from loguru import logger

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
    
def push_file(file_path, target_path="/sdcard/"):
    logger.info(f"[*] push {file_path} to {target_path}")
    return run_opt("file_push", [ADB, "push", file_path, target_path])[0]

def pull_file(file_path, target_path):
    logger.info(f"[*] pull {file_path} to {target_path}")
    return run_opt("file_pull", [ADB, "pull", file_path, target_path])[0]

def exec_shell(shell, as_root = True):
    shell = shlex.split(shell) if not as_root else ["su", "-c", shell]
    return run_opt("run_shell", [ADB, "shell"] + shell)

def install(apk_path):
    return run_opt("install_apk", [ADB, "install", apk_path])[0]

def oat_compile(package_name, mode="reset"):
    if mode=="reset":
        return run_opt("oat_compile", [ADB, "shell", "cmd", "package", "compile", "--reset", package_name])[0]
    else:
        return run_opt("oat_compile",[ADB, "shell", "cmd", "package", "compile", "-m", mode, "-f", "-c", package_name])[0]
