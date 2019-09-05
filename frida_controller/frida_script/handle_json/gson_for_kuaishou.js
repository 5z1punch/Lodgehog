Java.perform(function () {
    // com.google.gson.e -> com.google.gson.Gson
    // com.google.gson.m -> com.google.gson.JsonObject
    // com.google.gson.k -> com.google.gson.JsonElement
    // com.google.gson.o -> com.google.gson.JsonPrimitive
    // com.google.gson.h -> com.google.gson.JsonArray
    // com.google.gson.n -> com.google.gson.JsonParser
    // com.google.gson.r -> com.google.gson.TypeAdapter
    // 
    var Exc = Java.use('java.lang.Exception');
    var LLog = Java.use('android.util.Log');
    console.log("com.google.gson hook start -------->");
    try{
        console.log("hook com.google.gson.Gson");
        var Gson = Java.use("com.google.gson.e");
//        Gson.a.overload('java.lang.String','java.lang.Class').implementation = function(){
//            console.log("gson.Gson.fromJson("+arguments[0]+", "+arguments[1].getName()+")");
////            var e = Exc.$new("");
////            var log = LLog.$new();
////            console.log(log.getStackTraceString(e));
//            return this.a.apply(this,arguments);
//        }

//         Gson.a.overload('java.lang.String','java.lang.reflect.Type').implementation = function(){
//             console.log("gson.Gson.fromJson("+arguments[0]+", "+arguments[1].getTypeName()+")");
// //            var e = Exc.$new("");
// //            var log = LLog.$new();
// //            console.log(log.getStackTraceString(e));
//             return this.a.apply(this,arguments);
//         }
    }
    catch (e) {
        console.log("warning: handled exception->"+e);
    }
//    try{
//        console.log("hook com.google.gson.JsonObject");
//        var JsonObject = Java.use("com.google.gson.m");
//        JsonObject.b.implementation = function(){
//            console.log("gson.JsonObject.get("+arguments[0]+")");
//            return this.b.apply(this,arguments);
//        }
//        // JsonObject.getAsJsonArray.implementation = function(){
//        //     console.log("gson.JsonObject.getAsJsonArray("+arguments[0]+")");
//        //     return this.getAsJsonArray.apply(this,arguments);
//        // }
//        JsonObject.d.implementation = function (){
//            console.log("gson.JsonObject.getAsJsonObject("+arguments[0]+")");
//            return this.d.apply(this,arguments);
//        }
//        JsonObject.c.implementation = function(){
//            console.log("gson.JsonObject.getAsJsonPrimitive("+arguments[0]+")");
//            return this.c.apply(this,arguments);
//        }
//        JsonObject.a.overload('java.lang.String').implementation = function(){
//            var rrr = this.a.apply(this,arguments);
//            console.log("gson.JsonObject.has("+arguments[0]+")->"+rrr);
//            return rrr;
//        }
//    }catch(e){
//        console.log("warning: handled exception->"+e);
//    }
//    try{
//        console.log("hook com.google.gson.JsonParser");
//        var JsonParser = Java.use("com.google.gson.n");
//        JsonParser.a.overload("java.lang.String").implementation = function(){
//            console.log("gson.JsonParser.parse("+arguments[0]+")");
//            return this.a.apply(this,arguments);
//        }
//    }catch(e){
//        console.log("warning: handled exception->"+e);
//    }
//    // try{
//    //     console.log("hook com.google.gson.JsonStreamParser");
//    //     var JsonStreamParser = Java.use("com.google.gson.JsonStreamParser");
//    //     JsonStreamParser.$init.overload("java.lang.String").implementation = function(){
//    //         console.log("gson.JsonStreamParser("+arguments[0]+")");
//    //         return this.$init.apply(this,arguments);
//    //     }
//    // }catch(e){
//    //     console.log("warning: handled exception->"+e);
//    // }
//    // try{
//    //     console.log("hook com.google.gson.TypeAdapter");
//    //     var TypeAdapter = Java.use("com.google.gson.TypeAdapter");
//    //     TypeAdapter.fromJson.overload("java.lang.String").implementation = function(){
//    //         console.log("gson.TypeAdapter("+arguments[0]+")");
//    //         return this.fromJson.apply(this,arguments);
//    //     }
//    // }catch(e){
//    //     console.log("warning: handled exception->"+e);
//    // }
});