// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log('hook URL & Uri');
    try{
        var javaURL = Java.use("java.net.URL");
        var java_URI = Java.use("java.net.URI");
        var androidURI = Java.use("android.net.Uri");
        var stringUri = Java.use("android.net.Uri$StringUri");
        var UrlQuerySanitizer = Java.use("android.net.UrlQuerySanitizer");        
    }
    catch (e) {
        console.error(e);
    }

    var getParseEleImpFactory = function(funName,returnType,pArgsIndex){
        var _returnType = returnType ? returnType : "java.lang.String";
        var _pArgsIndex = pArgsIndex ? pArgsIndex : [];
        var implFun = function(){
            var rrr = this[funName].apply(this,arguments);
            var args = [];
            if(_pArgsIndex.length>0){
                for (var i = 0; i < _pArgsIndex.length; i++) {
                    args.push(arguments[_pArgsIndex[i]]);
                }
            }
            var return_data = "";
            switch(_returnType){
                case "java.lang.String":
                    return_data = rrr;
                    break;
                case "java.util.List":
                case "java.util.Set":
                    var strArray = Java.array("java.lang.String", rrr.toArray());
                    return_data = JSON.stringify(strArray);
                    break;
                case "ValueSanitizer":
                    return_data = rrr.getClass().toString();
                    break;
            }
            fridaCallback("URL."+funName, 0, args, return_data, this.toString(), null);
            return rrr;
        };
        return implFun;
    }
    
    const javaURLList = [
        ["getAuthority"],
        ["getHost"],
        ["getPath"],
        ["getQuery"],
    ];
    for(var methodi = 0; methodi < javaURLList.length; methodi++){
        var method = javaURLList[methodi];
        javaURL[method[0]].implementation = getParseEleImpFactory.apply(this, method);
    }

    const java_URIList = [
        ["getHost"],
        ["getAuthority"],
        ["getFragment"],
        ["getPath"],
        ["getQuery"],
        ["getRawAuthority"],
        ["getRawFragment"],
        ["getRawPath"],
        ["getRawQuery"],
    ];
    for(var methodi = 0; methodi < java_URIList.length; methodi++){
        var method = java_URIList[methodi];
        java_URI[method[0]].implementation = getParseEleImpFactory.apply(this, method);
    }
    
    const androidURIList = [
        ["getQueryParameter", "java.lang.String",[0]],
        ["getQueryParameters","java.util.List",[0]],
    ];
    for(var methodi = 0; methodi < androidURIList.length; methodi++){
        var method = androidURIList[methodi];
        androidURI[method[0]].implementation = getParseEleImpFactory.apply(this, method);
    }

    const stringUriList = [
        ["getHost"],
        ["getAuthority"],
        ["getFragment"],
        ["getPath"],
        ["getQuery"],
        ["getEncodedAuthority"],
        ["getEncodedFragment"],
        ["getEncodedPath"],
        ["getEncodedQuery"],
        ["getLastPathSegment"],
        // ["getPathSegments", "java.util.List"],
    ];
    for(var methodi = 0; methodi < stringUriList.length; methodi++){
        var method = stringUriList[methodi];
        stringUri[method[0]].implementation = getParseEleImpFactory.apply(this, method);
    }
    androidURI.parse.implementation = hookFactory("android.net.Uri", "parse", [0], false, false, undefined, false);
    javaURL.$init.overload("java.net.URL","java.lang.String", "java.net.URLStreamHandler").implementation = hookFactory("java.net.URL", "$init", [1], false, false, undefined, false);
    java_URI.$init.overload("java.lang.String").implementation = hookFactory("java.net.URI", "$init", [0], false, false, undefined, false);
    UrlQuerySanitizer.$init.overload("java.lang.String").implementation = hookFactory("android.net.UrlQuerySanitizer", "$init", [0], false, false, undefined, false);
    UrlQuerySanitizer.parseQuery.implementation = hookFactory("android.net.UrlQuerySanitizer", "parseQuery", [0], false, false, undefined, false);
    UrlQuerySanitizer.parseUrl.implementation = hookFactory("android.net.UrlQuerySanitizer", "parseUrl", [0], false, false, undefined, false);
    const uqsList = [
        ["getEffectiveValueSanitizer", "ValueSanitizer", [0]],
        ["getValue", "java.lang.String", [0]],
        ["getValueSanitizer", "ValueSanitizer", [0]],
        ["hasParameter", "java.lang.String", [0]],
    ];
    for(var methodi = 0; methodi < uqsList.length; methodi++){
        var method = uqsList[methodi];
        UrlQuerySanitizer[method[0]].implementation = getParseEleImpFactory.apply(this, method);
    }
});