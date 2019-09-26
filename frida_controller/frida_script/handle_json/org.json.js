// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log("hook org.json");
    try{
        var JSONArray = Java.use("org.json.JSONArray");
        var JSONObject = Java.use("org.json.JSONObject");
    }
    catch (e) {
        console.log(e);
    }

    /**
     * frida bug JSONArray.$init hook will ANR 
     * even if it is not called.
     * STATUS: ignore, just for OnePlus one with 7.1.2
     */
    JSONArray.$init.overload('java.lang.String').implementation = hookFactory("org.json.JSONArray", "$init", [0], false, false, undefined, false);
    JSONObject.$init.overload('java.lang.String').implementation = hookFactory("org.json.JSONObject", "$init", [0], false, false, undefined, false);

    var genGetValueImpl = function(typeGot){
        var implFunc = hookFactory("org.json.JSONObject", "get"+typeGot, [0], true, false, undefined, false);
        return implFunc;
    }
    var genOptValueImpl = function(typeGot){
        var implFunc = hookFactory("org.json.JSONObject", "opt"+typeGot, [0], true, false, undefined, false);
        return implFunc;
    }
    var genOptValueFallbackImpl = function(typeGot){
        var implFunc = hookFactory("org.json.JSONObject", "opt"+typeGot, [0, 1], true, false, undefined, false);
        return implFunc;
    }
    const typeList1 = [
        "",
        "JSONArray",
        "JSONObject"
    ];
    const typeList2 = [
        "Boolean",
        "Double",
        "Int",
        "Long",
        "String"
    ];
    for (var i = 0; i < typeList1.length; i++) {
        JSONObject["get"+typeList1[i]].implementation = genGetValueImpl(typeList1[i]);
        JSONObject["opt"+typeList1[i]].implementation = genOptValueImpl(typeList1[i]);
    }
    for (var i = 0; i < typeList2.length; i++) {
        JSONObject["get"+typeList2[i]].implementation = genGetValueImpl(typeList2[i]);
        JSONObject["opt"+typeList2[i]].overload('java.lang.String').implementation = genOptValueImpl(typeList2[i]);
        var typeOverload = "";
        if(typeList2[i]!="String"){
            typeOverload = typeList2[i].toLowerCase();
        }
        else{
            typeOverload = "java.lang.String";
        }
        JSONObject["opt"+typeList2[i]].overload('java.lang.String', typeOverload).implementation = genOptValueFallbackImpl(typeList2[i]);
    }

});