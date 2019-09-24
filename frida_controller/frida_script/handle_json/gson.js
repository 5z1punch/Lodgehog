// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log("com.google.gson hook start -------->");
    try{
        console.log("hook com.google.gson.Gson");
        var Gson = Java.use("com.google.gson.Gson");
        Gson.fromJson.overload('java.lang.String','java.lang.Class').implementation = function(){
            var arg_data = [arguments[0], arguments[1].getName()];
            fridaCallback("gson.Gson.fromJson", 0, arg_data, undefined, undefined, undefined)        
            return this.fromJson.apply(this,arguments);
        }

        Gson.fromJson.overload('java.lang.String','java.lang.reflect.Type').implementation = function(){
            var arg_data = [arguments[0], checkReflectType(arguments[1])];
            fridaCallback("gson.Gson.fromJson", 0, arg_data, undefined, undefined, undefined)
            return this.fromJson.apply(this,arguments);
        }
    }
    catch (e) {
        console.log("warning: handled exception->"+e);
    }
    try{
        console.log("hook com.google.gson.JsonObject");
        var JsonObject = Java.use("com.google.gson.JsonObject");
        const getList = [
            "",
            "AsJsonArray",
            "AsJsonObject",
            "AsJsonPrimitive",
        ];
        for(var i=0; i < getList.length; i++){
            JsonObject["get"+getList[i]].implementation = hookFactory("gson.JsonObject", 
            "get"+getList[i], [0], false, false, undefined, false);
        }
        JsonObject.has.implementation = hookFactory("gson.JsonObject", "has", [0], true, false, undefined, false);
    }catch(e){
        console.log("warning: handled exception->"+e);
    }
    try{
        console.log("hook com.google.gson.JsonParser");
        var JsonParser = Java.use("com.google.gson.JsonParser");
        JsonParser.parse.overload("java.lang.String").implementation = hookFactory("gson.JsonParser", 
        "parse", [0], false, false, undefined, false);
    }catch(e){
        console.log("warning: handled exception->"+e);
    }
    try{
        console.log("hook com.google.gson.JsonStreamParser");
        var JsonStreamParser = Java.use("com.google.gson.JsonStreamParser");
        JsonStreamParser.$init.overload("java.lang.String").implementation = hookFactory("gson.JsonStreamParser", 
        "$init", [0], false, false, undefined, false);
    }catch(e){
        console.log("warning: handled exception->"+e);
    }
    try{
        console.log("hook com.google.gson.TypeAdapter");
        var TypeAdapter = Java.use("com.google.gson.TypeAdapter");
        TypeAdapter.fromJson.overload("java.lang.String").implementation = hookFactory("gson.TypeAdapter", 
        "fromJson", [0], false, false, undefined, false);
    }catch(e){
        console.log("warning: handled exception->"+e);
    }
});