// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log("com.fasterxml.jackson hook start -------->");
    try{
        console.log("hook com.fasterxml.jackson.core.JsonFactory");
        var JsonFactory = Java.use("com.fasterxml.jackson.core.JsonFactory");
        JsonFactory.createJsonParser.overload('java.lang.String').implementation = function(){
            console.log("jackson.JsonFactory.createJsonParser("+arguments[0]+")");
            return this.createJsonParser.apply(this,arguments);
        }

        JsonFactory.createParser.overload('java.lang.String').implementation = function(){
            console.log("jackson.JsonFactory.createParser("+arguments[0]+")");
            return this.createParser.apply(this,arguments);
        }
    }
    catch (e) {
        console.log("warning: handled exception->"+e);
    }

    try{
        console.log("hook com.fasterxml.jackson.databind.ObjectMapper");
        var ObjectMapper = Java.use("com.fasterxml.jackson.databind.ObjectMapper");
        ObjectMapper.readTree.overload('java.lang.String').implementation = function(){
            console.log("jackson.ObjectMapper.readTree("+arguments[0]+")");
            return this.readTree.apply(this,arguments);
        }
        ObjectMapper.readValue.overload('java.lang.String','java.lang.Class').implementation = function(){
            console.log("jackson.ObjectMapper.readValue("+arguments[0]+", "+arguments[1].getName()+")");
            return this.readValue.apply(this,arguments);
        }
        ObjectMapper.readValue.overload('java.lang.String','com.fasterxml.jackson.databind.JavaType').implementation = function(){
            console.log("jackson.ObjectMapper.readValue("+arguments[0]+", "+arguments[1].getErasedSignature()+")");
            return this.readValue.apply(this,arguments);
        }
        ObjectMapper.readValue.overload('java.lang.String','com.fasterxml.jackson.core.type.TypeReference').implementation = function(){
            console.log("jackson.ObjectMapper.readValue("+arguments[0]+", "+arguments[1].getType().getTypeName()+")");
            return this.readValue.apply(this,arguments);
        }
    }
    catch (e) {
        console.log("warning: handled exception->"+e);
    }

    try{
        console.log("hook com.fasterxml.jackson.databind.JsonNode");
        var JsonNode = Java.use("com.fasterxml.jackson.databind.JsonNode");
        var genGetValueImpl = function(typeGot){
            var implFunc = function(){
                var rrr = this[typeGot].apply(this,arguments);
                console.log("jackson.JsonNode."+typeGot+"("+arguments[0]+")->"+rrr);
                return rrr;
            };
            return implFunc;
        };
        var methodList0 = [
            "findParents",
            "findValues",
            "findValuesAsText"
        ];
        var methodList1 = [
            "get",
            "has",
            "hasNonNull",
            "path",
            "at"
        ];
        var methodList2 = [
            "findParent",
            "findPath",
            "findValue"
        ];
        for (var i = 0; i < methodList0.length; i++) {
            JsonNode[methodList0[i]].overload('java.lang.String','java.util.List').implementation = genGetValueImpl(methodList0[i]);
            JsonNode[methodList0[i]].overload('java.lang.String').implementation = genGetValueImpl(methodList0[i]);
        }
        for (var i = 0; i < methodList1.length; i++) {
            JsonNode[methodList1[i]].overload('java.lang.String').implementation = genGetValueImpl(methodList1[i]);
        }
        for (var i = 0; i < methodList2.length; i++) {
            JsonNode[methodList2[i]].implementation = genGetValueImpl(methodList2[i]);
        }
        JsonNode.with.implementation = function(){
            console.log("jackson.JsonNode.with("+arguments[0]+")->");
            var rrr = this.with.apply(this,arguments);
            console.log("preLineResult@"+rrr);
            return rrr;
        }
        JsonNode.withArray.implementation = function(){
            console.log("jackson.JsonNode.withArray("+arguments[0]+")->");
            var rrr = this.withArray.apply(this,arguments);
            console.log("preLineResult@"+rrr);
            return rrr;
        }
    }
    catch (e) {
        console.log("warning: handled exception->"+e);
    }
});