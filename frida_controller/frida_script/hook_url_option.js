// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log('hook URL & Uri');
    try{
        var URL = Java.use("java.net.URL");
        var URI = Java.use("android.net.Uri");
        // var List = Java.use("java.util.List");
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
            }
            fridaCallback("URL."+funName, 0, args, return_data, this.toString(), null);
            return rrr;
        };
        return implFun;
    }
    const mList = [
        ["getFragment"],
        ["getHost"],
        ["getLastPathSegment"],
        ["getPath"],
        ["getPathSegments", "java.util.List"],
        ["getQuery"],
        ["getQueryParameter", "java.lang.String",[0]],
        ["getQueryParameters","java.util.List",[0]],
    ];
    for(var methodi = 0; methodi < mList.length; methodi++){
        var method = mList[methodi];
        URL[method[0]].implementation = getParseEleImpFactory.apply(this, method);
    }

    URI.parse.implementation = hookFactory("URI", "parse", [0], false, false, undefined, false);
    URI.$init.overload("java.lang.String").implementation = hookFactory("URI", "$init", [0], false, false, undefined, false);
});