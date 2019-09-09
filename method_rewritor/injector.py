import re
import os
import shutil
import sys

from method_rewritor.invoke_opt import rewriteStringInvoke, rewriteMapInvoke
from loguru import logger
import env

DEBUG = False

def rewriteController(line):
    rewritePlugins = [
        rewriteStringInvoke,
        rewriteMapInvoke
    ]
    for plugin in rewritePlugins:
        rewriteCheck = plugin.rewrite(line)
        if rewriteCheck[0]:
            return rewriteCheck
    return False, None

def injectLogPlugin(smaliFile, outFile):
    smaliChanged = False
    with open(smaliFile) as smaliFileHandle:
        # logger.info(f"scan log point for {smaliFile} ")
        with open(outFile, 'w') as outFileHandle:
            for line in smaliFileHandle:
                rewriteCheck = rewriteController(line)
                if rewriteCheck[0]:
                    # logger.info("")
                    smaliChanged = True
                    outFileHandle.write(rewriteCheck[1])
                else:
                    outFileHandle.write(line)
    if smaliChanged:
        logger.debug(f"{smaliFile} changed")
    return smaliChanged


def ignorePackageFiles(packageDirs):
    def ignoreFunc(dirname, filenames):
        if dirname in packageDirs:
            return filenames
        else:
            return []

    return ignoreFunc


def injectPackageInMulDex(decomDir, packageNameList, outputDir, mergeLater=False, ignoreAutoR=True):
    logger.info("inject log plugin for particular package name in mul dexs ")
    subDirList = []
    for packageName in packageNameList:
        subDirList.append(packageName.replace(".", os.sep))
    smaliDirs = []
    changedSmaliDirs = []
    for file in os.listdir(decomDir):
        if file.startswith("smali") and os.path.isdir(os.path.join(decomDir, file)):
            smaliDirs.append(os.path.join(decomDir, file))
    packageDirs = []
    for smaliDir in smaliDirs:
        for subDir in subDirList:
            packageDirs.append(smaliDir + os.sep + subDir)
    if not mergeLater:
        shutil.copytree(decomDir, outputDir, ignore=ignorePackageFiles(packageDirs), ignore_dangling_symlinks=True)
    for smaliDir in smaliDirs:
        smaliChanged = False
        for subDir in subDirList:
            for root, dirs, files in os.walk(os.path.join(smaliDir, subDir)):
                logger.info(f"step into package dir {root}")
                targetRoot = root.replace(decomDir, outputDir)
                if not os.path.exists(targetRoot):
                    os.makedirs(targetRoot)
                for file in files:
                    filename = os.path.splitext(file)[0]
                    fileext = os.path.splitext(file)[1]
                    if fileext == ".smali" and not (ignoreAutoR and (filename == "R" or filename.startswith("R$"))):
                        smaliChanged = injectLogPlugin(os.path.join(root, file),
                                                       os.path.join(targetRoot, file)) or smaliChanged
                    else:
                        shutil.copy2(os.path.join(root, file), os.path.join(targetRoot, file))
        if smaliChanged:
            targetPath = smaliDir.replace(decomDir, outputDir)
            tmpPath = os.path.split(targetPath)
            newName = os.path.join(tmpPath[0], "x" + tmpPath[1])
            os.rename(targetPath, newName)
            changedSmaliDirs.append(newName)
    payloadSmaliDir = os.path.join(outputDir, "xsmali"+str(len(smaliDirs)+1))
    shutil.copytree(env.SMALIPAYLOAD, payloadSmaliDir)
    changedSmaliDirs.append(payloadSmaliDir)
    return changedSmaliDirs


if __name__ == '__main__':
    decomDir = sys.argv[1]
    packageName = sys.argv[2]
    outputDir = sys.argv[3]
    if DEBUG:
        if os.path.exists(outputDir):
            shutil.rmtree(outputDir)
    injectPackageInMulDex(decomDir, packageName, outputDir)
