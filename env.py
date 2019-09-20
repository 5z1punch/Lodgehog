import os

# base
BASEPATH = os.path.dirname(os.path.realpath(__file__))
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
INJECTVECTOR = os.path.join(BASEPATH, "inject_vector")
SMALIPAYLOAD = os.path.join(INJECTVECTOR, "smali", "build_dex", "out")

# static analyzer
STATICANA = os.path.join(BASEPATH, "static_analyzer")

# frida 
FRIDAPATH = os.path.join(BASEPATH, "frida_controller")

# project property
PROJECTJSON = os.path.join(TMPPATH, "project.json")

# log file
LOGPATH = os.path.join(BASEPATH, "log")