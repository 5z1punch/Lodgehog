// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log('hook URL & Uri');
    try{
        var URL = Java.use("java.net.URL");
        var URI = Java.use("android.net.Uri");
        var Exc = Java.use('java.lang.Exception');
        var LLog = Java.use('android.util.Log');
        // var List = Java.use("java.util.List");
    }
    catch (e) {
        console.log(e);
    }

    var getParseEleImpFactory = function(funName,returnType,pArgsIndex){
        var _returnType = returnType ? returnType : "java.lang.String";
        var _pArgsIndex = pArgsIndex ? pArgsIndex : [];
        var implFun = function(){
            // console.log(funName);
            var rrr = this[funName].apply(this,arguments);
            // console.log(1);
            var args = "";
            if(_pArgsIndex.length>0){
                for (var i = 0; i < _pArgsIndex.length; i++) {
                    console.log(3);
                    args += arguments[_pArgsIndex[i]]+",";
                }
                args = args.substring(0,args.length-1);
            }
            var logStr = "URI(\""+this.toString()+"\")."+funName+"("+args+")="
            // console.log(2);
            switch(_returnType){
                case "java.lang.String":
                    logStr += "\""+rrr+"\"";
                    break;
                case "java.util.List":
                case "java.util.Set":
                    var strArray = Java.array("java.lang.String", rrr.toArray());
                    logStr += JSON.stringify(strArray);
                    break;
            }
            console.log(logStr);
            return rrr;
        };
        return implFun;
    }
    URI.getFragment.implementation = getParseEleImpFactory("getFragment");
    URI.getHost.implementation = getParseEleImpFactory("getHost");
    URI.getLastPathSegment.implementation = getParseEleImpFactory("getLastPathSegment");
    URI.getPath.implementation = getParseEleImpFactory("getPath");
    URI.getPathSegments.implementation = getParseEleImpFactory("getPathSegments","java.util.List");
    URI.getQuery.implementation = getParseEleImpFactory("getQuery");
    URI.getQueryParameter.implementation = getParseEleImpFactory("getQueryParameter", "java.lang.String",[0]);
    // URI.getQueryParameterNames.implementation = getParseEleImpFactory("")
    URI.getQueryParameters.implementation = getParseEleImpFactory("getQueryParameters","java.util.List",[0]);

    URI.parse.implementation = function(){
        console.log("URI.parse("+arguments[0]+")");
        var rrr = this.parse.apply(this,arguments);
        return rrr;
    }

    // URL.getFile.implementation = getParseEleImpFactory("getFile");
    // URL.getPath.implementation = getParseEleImpFactory("getPath");
    // URL.getQuery.implementation = getParseEleImpFactory("getQuery");
    URL.$init.overload("java.lang.String").implementation = function(){
        console.log("URL.$new(\""+arguments[0]+"\")");
        var rrr =  this.$init.apply(this,arguments);
        return rrr;
    }
});