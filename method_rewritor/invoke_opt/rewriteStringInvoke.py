def rewrite(line):
    tline = line.lstrip()
    originClass = "java/lang/String"
    staticMethods = ["indexOf([CIILjava/lang/String;I)I",
                     "indexOf([CII[CIII)I",
                     "lastIndexOf([CIILjava/lang/String;I)I",
                     "lastIndexOf([CII[CIII)I",
                     "join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;",
                     "join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;",
                     "format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;",
                     "format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;",
                     "valueOf(Ljava/lang/Object;)Ljava/lang/String;",
                     "valueOf([C)Ljava/lang/String;",
                     "valueOf([CII)Ljava/lang/String;",
                     "copyValueOf([CII)Ljava/lang/String;",
                     "copyValueOf([C)Ljava/lang/String;",
                     "valueOf(Z)Ljava/lang/String;",
                     "valueOf(C)Ljava/lang/String;",
                     "valueOf(I)Ljava/lang/String;",
                     "valueOf(J)Ljava/lang/String;",
                     "valueOf(F)Ljava/lang/String;",
                     "valueOf(D)Ljava/lang/String;"]
    virtualMethods = ["length()I",
                      "isEmpty()Z",
                      "charAt(I)C",
                      "codePointAt(I)I",
                      "codePointBefore(I)I",
                      "codePointCount(II)I",
                      "offsetByCodePoints(II)I",
                      "getChars([CI)V",
                      "getChars(II[CI)V",
                      "getBytes(II[BI)V",
                      "getBytes(Ljava/lang/String;)[B",
                      "getBytes(Ljava/nio/charset/Charset;)[B",
                      "getBytes()[B",
                      "equals(Ljava/lang/Object;)Z",
                      "contentEquals(Ljava/lang/StringBuffer;)Z",
                      "contentEquals(Ljava/lang/CharSequence;)Z",
                      "equalsIgnoreCase(Ljava/lang/String;)Z",
                      "compareTo(Ljava/lang/String;)I",
                      "compareToIgnoreCase(Ljava/lang/String;)I",
                      "regionMatches(ILjava/lang/String;II)Z",
                      "regionMatches(ZILjava/lang/String;II)Z",
                      "startsWith(Ljava/lang/String;I)Z",
                      "startsWith(Ljava/lang/String;)Z",
                      "endsWith(Ljava/lang/String;)Z",
                      "hashCode()I",
                      "indexOf(I)I",
                      "indexOf(II)I",
                      "lastIndexOf(I)I",
                      "lastIndexOf(II)I",
                      "indexOf(Ljava/lang/String;)I",
                      "indexOf(Ljava/lang/String;I)I",
                      "lastIndexOf(Ljava/lang/String;)I",
                      "lastIndexOf(Ljava/lang/String;I)I",
                      "substring(I)Ljava/lang/String;",
                      "substring(II)Ljava/lang/String;",
                      "subSequence(II)Ljava/lang/CharSequence;",
                      "concat(Ljava/lang/String;)Ljava/lang/String;",
                      "replace(CC)Ljava/lang/String;",
                      "matches(Ljava/lang/String;)Z",
                      "contains(Ljava/lang/CharSequence;)Z",
                      "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
                      "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
                      "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;",
                      "split(Ljava/lang/String;I)[Ljava/lang/String;",
                      "split(Ljava/lang/String;)[Ljava/lang/String;",
                      "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;",
                      "toLowerCase()Ljava/lang/String;",
                      "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;",
                      "toUpperCase()Ljava/lang/String;",
                      "trim()Ljava/lang/String;",
                      "toString()Ljava/lang/String;",
                      "toCharArray()[C",
                      "intern()Ljava/lang/String;",
                      "compareTo(Ljava/lang/Object;)I"]
    if tline.startswith("invoke-static"):
        for sm in staticMethods:
            invokeCode = "L" + originClass+";->"+sm
            if invokeCode in line:
                rewriteCode = line.replace("L" + originClass+";->","Lcom/xlab/lodgehog/MaskString;->")
                return True, rewriteCode
    elif tline.startswith("invoke-virtual"):
        for vm in virtualMethods:
            invokeCode = "L" + originClass + ";->" + vm
            if invokeCode in line:
                tmps = line.split("(")
                assert len(tmps)==2
                rewriteCode = tmps[0].replace("L" + originClass+";->","Lcom/xlab/lodgehog/MaskString;->")+"(" + "L" + originClass+";"+tmps[1]
                return True, rewriteCode.replace("invoke-virtual", "invoke-static")
    return False, None