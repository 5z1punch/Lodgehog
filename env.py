import os

# base
BASEPATH = os.path.realpath(__file__)
JAVAPATH = "java"
TMPPATH = os.path.join(BASEPATH, "tmp")

# apktool
APKTOOL = os.path.join(BASEPATH, "libs", "apktool", "apktool.jar")

# smali tools
SMALIPATH = os.path.join(BASEPATH, "libs", "smali", "smali-2.3.1.jar")
BAKSMALIPATH = os.path.join(BASEPATH, "libs", "smali", "baksmali-2.3.1.jar")

# jar signer
SIGNERPATH = os.path.join(BASEPATH, "libs", "jarsigner", "signapk.jar")
SIGNKEYPATH = os.path.join(BASEPATH, "libs", "jarsigner", "testkey")

# inject vector
SMALIPAYLOAD = os.path.join(BASEPATH, "inject_vector", "smali", "build_dex", "out")