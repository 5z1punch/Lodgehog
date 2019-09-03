import re

def splitParams(methodDefLine):
    '''
    The debug info decoded by Baksmali has incomplete `.param`. 
    It changes some `.param` params to `.local` params for optimization,
    which makes it difficult to collect parameters through debug information.
    return  isStatic? , [paramsV, ...]
    :param methodDefLine: str
    :return: Z, [str ,...]
    '''
    # logger.info("split params for method def")
    # logger.debug(methodDefLine)
    isStatic = False
    methodSplit = methodDefLine.split(" ")
    if methodSplit[1] == "static" or (len(methodSplit) > 2 and methodSplit[2] == "static"):
        isStatic = True
    find = re.findall(r"\((.+?)\)", methodDefLine)
    params = []
    # baseType = "ZBSCIJFD"
    if find:
        objFlag = False
        arrayFlag = False
        objType = ""
        arrayType = ""
        for c in find[0]:
            if objFlag:
                objType += c
                if c == ";":
                    objFlag = False
                    if arrayFlag:
                        arrayType += objType
                        params.append(arrayType)
                        objType = ""
                        arrayType = ""
                        arrayFlag = False
                    else:
                        params.append(objType)
                        objType = ""
            else:
                if c == "L":
                    objFlag = True
                    objType += c
                elif c == "[":
                    arrayFlag = True
                    arrayType += c
                else:
                    if arrayFlag:
                        arrayFlag = False
                        arrayType += c
                        params.append(arrayType)
                        arrayType = ""
                    else:
                        params.append(c)
    return isStatic, params

def getMethodParamsLen(isStatic, params):
    num = 0
    for p in params:
        if p=="J" or p=="D":
            num += 2
        else:
            num += 1
    if not isStatic:
        num += 1
    return num