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

    JSONArray.$init.overload('java.lang.String').implementation = function(){
        console.log("org.json.JSONArray("+arguments[0]+")");
        return this.$init.apply(this,arguments);
    }

    JSONObject.$init.overload('java.lang.String').implementation = function(){
        console.log("org.json.JSONObject("+arguments[0]+")");
        return this.$init.apply(this,arguments);
    }

    var genGetValueImpl = function(typeGot){
        var implFunc = function(){
            console.log("org.json.JSONObject.get"+typeGot+"("+arguments[0]+")->");
            var rrr = this["get"+typeGot].apply(this,arguments);
            console.log("preLineResult@"+rrr);
            return rrr;
        };
        return implFunc;
    }
    var genOptValueImpl = function(typeGot){
        var implFunc = function(){
            var rrr = this["opt"+typeGot].apply(this,arguments);
            console.log("org.json.JSONObject.opt"+typeGot+"("+arguments[0]+")->"+rrr);
            return rrr;
        };
        return implFunc;
    }
    var genOptValueFallbackImpl = function(typeGot){
        var implFunc = function(){
            var rrr = this["opt"+typeGot].apply(this,arguments);
            console.log("org.json.JSONObject.opt"+typeGot+"("+arguments[0]+", "+arguments[1]+")->"+rrr);
            return rrr;
        };
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
        JSONObject["opt"+typeList2[i]].overload('java.lang.String','java.lang.String').implementation = genOptValueFallbackImpl(typeList2[i]);
    }

});