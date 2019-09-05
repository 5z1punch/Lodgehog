// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log("com.google.gson hook start -------->");
    try{
        console.log("hook com.google.gson.Gson");
        var Gson = Java.use("com.google.gson.Gson");
        Gson.fromJson.overload('java.lang.String','java.lang.Class').implementation = function(){
            console.log("gson.Gson.fromJson("+arguments[0]+", "+arguments[1].getName()+")");
            return this.fromJson.apply(this,arguments);
        }

        Gson.fromJson.overload('java.lang.String','java.lang.reflect.Type').implementation = function(){
            console.log("gson.Gson.fromJson("+arguments[0]+", "+arguments[1].getTypeName()+")");
            return this.fromJson.apply(this,arguments);
        }
    }
    catch (e) {
        console.log("warning: handled exception->"+e);
    }
    try{
        console.log("hook com.google.gson.JsonObject");
        var JsonObject = Java.use("com.google.gson.JsonObject");
        JsonObject.get.implementation = function(){
            console.log("gson.JsonObject.get("+arguments[0]+")");
            return this.get.apply(this,arguments);
        }
        JsonObject.getAsJsonArray.implementation = function(){
            console.log("gson.JsonObject.getAsJsonArray("+arguments[0]+")");
            return this.getAsJsonArray.apply(this,arguments);
        }
        JsonObject.getAsJsonObject.implementation = function (){
            console.log("gson.JsonObject.getAsJsonObject("+arguments[0]+")");
            return this.getAsJsonObject.apply(this,arguments);
        }
        JsonObject.getAsJsonPrimitive.implementation = function(){
            console.log("gson.JsonObject.getAsJsonPrimitive("+arguments[0]+")");
            return this.getAsJsonPrimitive.apply(this,arguments);
        }
        JsonObject.has.implementation = function(){
            var rrr = this.has.apply(this,arguments);
            console.log("gson.JsonObject.has("+arguments[0]+")->"+rrr);
            return rrr;
        }
    }catch(e){
        console.log("warning: handled exception->"+e);
    }
    try{
        console.log("hook com.google.gson.JsonParser");
        var JsonParser = Java.use("com.google.gson.JsonParser");
        JsonParser.parse.overload("java.lang.String").implementation = function(){
            console.log("gson.JsonParser.parse("+arguments[0]+")");
            return this.parse.apply(this,arguments);
        }
    }catch(e){
        console.log("warning: handled exception->"+e);
    }
    try{
        console.log("hook com.google.gson.JsonStreamParser");
        var JsonStreamParser = Java.use("com.google.gson.JsonStreamParser");
        JsonStreamParser.$init.overload("java.lang.String").implementation = function(){
            console.log("gson.JsonStreamParser("+arguments[0]+")");
            return this.$init.apply(this,arguments);
        }
    }catch(e){
        console.log("warning: handled exception->"+e);
    }
    try{
        console.log("hook com.google.gson.TypeAdapter");
        var TypeAdapter = Java.use("com.google.gson.TypeAdapter");
        TypeAdapter.fromJson.overload("java.lang.String").implementation = function(){
            console.log("gson.TypeAdapter("+arguments[0]+")");
            return this.fromJson.apply(this,arguments);
        }
    }catch(e){
        console.log("warning: handled exception->"+e);
    }
});