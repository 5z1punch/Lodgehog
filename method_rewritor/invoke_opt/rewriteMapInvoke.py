def rewrite(line):
    tline = line.lstrip()
    oInterface = "java/util/Map"
    originClasses = [
        oInterface,
        "java/util/AbstractMap",
        "android/util/ArrayMap",
        "java/util/jar/Attributes",
        "java/security/AuthProvider",
        "java/util/concurrent/ConcurrentHashMap",
        "java/util/concurrent/ConcurrentMap",
        "java/util/concurrent/ConcurrentNavigableMap",
        "java/util/concurrent/ConcurrentSkipListMap",
        "java/util/EnumMap",
        "java/util/HashMap",
        "java/util/Hashtable",
        "java/util/IdentityHashMap",
        "java/util/LinkedHashMap",
        "java/util/NavigableMap",
        "java/util/Properties",
        "java/security/Provider",
        "java/util/SortedMap",
        "java/util/TreeMap",
        "java/util/WeakHashMap"
    ]
    virtualMethods = ["get(Ljava/lang/Object;)Ljava/lang/Object;",
                      "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
                      "containsKey(Ljava/lang/Object;)Z"]
    if tline.startswith("invoke-virtual"):
        for vm in virtualMethods:
            for oClass in originClasses:
                invokeCode = "L"+oClass + ";->"+vm
                if invokeCode in line:
                    tmps = line.split("(")
                    assert len(tmps) == 2
                    rewriteCode = tmps[0].replace("L" + oClass + ";->",
                                                  "LMaskMap;->") + "(" + "L" + oInterface + ";" + tmps[1]
                    return True, rewriteCode.replace("invoke-virtual", "invoke-static")
    return False, None