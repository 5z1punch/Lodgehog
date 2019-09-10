import re
import os
import shutil
import sys

from method_rewritor.invoke_opt import rewriteStringInvoke, rewriteMapInvoke
from loguru import logger
import env

DEBUG = False
rewritePlugins = [
    rewriteStringInvoke,
    rewriteMapInvoke,
]
dexMethodRefSet = {}
dexSmaliMDef = {}
defNum = 0
maxFlag = False
maxAddRef = 0

for plugin in rewritePlugins:
    maxAddRef += plugin.MAXREF

def resetRefSet():
    global dexMethodRefSet, dexSmaliMDef, maxFlag, defNum, rewritePlugins
    dexMethodRefSet = {}
    dexSmaliMDef = {}
    defNum = 0
    maxFlag = False
    for plugin in rewritePlugins:
        dexMethodRefSet[plugin.__name__] = set()

def isMethdoDef(line):
    line = line.strip()
    if line.startswith(".method "):
        return True
    return False

def rewriteController(line):
    global rewritePlugins, dexMethodRefSet
    for plugin in rewritePlugins:
        rewriteCheck = plugin.rewrite(line)
        if rewriteCheck[0]:
            dexMethodRefSet[plugin.__name__].add(rewriteCheck[2])
            return rewriteCheck
    return False, None

def injectLogPlugin(smaliFile, outFile):
    global dexSmaliMDef, maxFlag, maxAddRef, defNum
    smaliChanged = False
    with open(smaliFile) as smaliFileHandle:
        # logger.info(f"scan log point for {smaliFile} ")
        methodDefNum = 0
        with open(outFile, 'w') as outFileHandle:
            for line in smaliFileHandle:
                if not maxFlag and isMethdoDef(line):
                    methodDefNum += 1
                rewriteCheck = rewriteController(line)
                if rewriteCheck[0]:
                    # logger.info("")
                    smaliChanged = True
                    outFileHandle.write(rewriteCheck[1])
                else:
                    outFileHandle.write(line)
        if not maxFlag:
            dexSmaliMDef[smaliFile] = methodDefNum
            defNum += methodDefNum
            if defNum >= maxAddRef:
                maxFlag = True
    if smaliChanged:
        logger.debug(f"{smaliFile} changed")
    return smaliChanged

def moveWithSubDir(baseDir, absPath, outPath):
    baseDir = os.path.realpath(baseDir)
    absPath = os.path.realpath(absPath)
    relPath = os.path.relpath(absPath, baseDir)
    outputDir = os.path.join(outPath, os.path.split(relPath)[0])
    if not os.path.exists(outputDir):
        os.makedirs(outputDir)
    shutil.move(absPath, os.path.join(outPath,relPath))

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
            packageDirs.append(os.path.join(smaliDir, subDir))
    if not mergeLater:
        shutil.copytree(decomDir, outputDir, ignore=ignorePackageFiles(packageDirs), ignore_dangling_symlinks=True)
    payloadSmaliDir = os.path.join(outputDir, "xsmali"+str(len(smaliDirs)+1))
    shutil.copytree(env.SMALIPAYLOAD, payloadSmaliDir)
    changedSmaliDirs.append(payloadSmaliDir)
    for smaliDir in smaliDirs:
        smaliChanged = False
        resetRefSet()
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
            dexRefNum = 0
            dexDefNum = 0
            for pName in dexMethodRefSet:
                dexRefNum += len(dexMethodRefSet[pName])
            targetPath = smaliDir.replace(decomDir, outputDir)
            for smaliFile in dexSmaliMDef:
                if dexDefNum < dexRefNum:
                    moveWithSubDir(targetPath, smaliFile.replace(decomDir, outputDir), payloadSmaliDir)
                    dexDefNum += dexSmaliMDef[smaliFile]
                else:
                    break
            tmpPath = os.path.split(targetPath)
            newName = os.path.join(tmpPath[0], "x" + tmpPath[1])
            os.rename(targetPath, newName)
            changedSmaliDirs.append(newName)
    return changedSmaliDirs


if __name__ == '__main__':
    decomDir = sys.argv[1]
    packageName = sys.argv[2]
    outputDir = sys.argv[3]
    if DEBUG:
        if os.path.exists(outputDir):
            shutil.rmtree(outputDir)
    injectPackageInMulDex(decomDir, packageName, outputDir)
