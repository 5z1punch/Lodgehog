// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log("com.alibaba.fastjson hook start -------->");
    try{
        console.log("hook com.alibaba.fastjson.JSON");
        var FastJson = Java.use("com.alibaba.fastjson.JSON");
        try{
            FastJson.parse.overload('java.lang.String','com.alibaba.fastjson.parser.ParserConfig','int').implementation = function(){
                console.log("fastjson.JSON.parse("+arguments[0]+", "+arguments[2]+")");
                return this.parse.apply(this,arguments);
            }
        }
        catch(e2){
            console.log("warning: maybe version < 1.2.38");
            FastJson.parse.overload('java.lang.String','int').implementation = function(){
                console.log("fastjson.JSON.parse("+arguments[0]+", "+arguments[1]+")");
                return this.parse.apply(this,arguments);
            }
        }

        FastJson.parseObject.overload('java.lang.String').implementation = function(){
            console.log("fastjson.JSON.parseObject("+arguments[0]+")");
            return this.parseObject.apply(this,arguments);
        }
        FastJson.parseObject.overload('java.lang.String', 'java.lang.reflect.Type', 'int', '[Lcom.alibaba.fastjson.parser.Feature;').implementation = function(){
            console.log("fastjson.JSON.parseObject("+arguments[0]+", "+arguments[1].getTypeName()+", "+arguments[2]+")");
            return this.parseObject.apply(this,arguments);
        }
        FastJson.parseObject.overload('java.lang.String','java.lang.reflect.Type','com.alibaba.fastjson.parser.ParserConfig','com.alibaba.fastjson.parser.deserializer.ParseProcess','int', '[Lcom.alibaba.fastjson.parser.Feature;').implementation = function(){
            console.log("fastjson.JSON.parseObject("+arguments[0]+", "+arguments[1].getTypeName()+", "+arguments[4]+")")
            return this.parseObject.apply(this,arguments);
        }
        FastJson.parseArray.overload('java.lang.String').implementation = function(){
            console.log("fastjson.JSON.parseArray("+arguments[0]+")");
            return this.parseArray.apply(this,arguments);
        }
        FastJson.parseArray.overload('java.lang.String','java.lang.Class').implementation = function(){
            console.log("fastjson.JSON.parseArray("+arguments[0]+", "+arguments[1].getName()+")");
            return this.parseArray.apply(this,arguments);
        }
        FastJson.parseArray.overload('java.lang.String','[Ljava.lang.reflect.Type;').implementation = function(){
            console.log("fastjson.JSON.parseArray("+arguments[0]+")");
            return this.parseArray.apply(this,arguments);
        }
    }
    catch (e) {
        console.log("warning: handled exception->"+e);
    }
    try{
        console.log("hook com.alibaba.fastjson.JSONObject");
        var JSONObject = Java.use("com.alibaba.fastjson.JSONObject");
        JSONObject.containsKey.implementation = function(){
            var rrr = this.containsKey.apply(this,arguments);
            console.log("fastjson.JSONObject.containsKey("+arguments[0]+")->"+rrr);
            return rrr;
        }
        JSONObject.containsValue.implementation = function(){
            var rrr = this.containsValue.apply(this,arguments);
            console.log("fastjson.JSONObject.containsValue("+arguments[0]+")->"+rrr);
            return rrr;
        }
        JSONObject.getObject.overload('java.lang.String','java.lang.Class').implementation = function(){
            console.log("fastjson.JSONObject.getObject("+arguments[0]+", "+arguments[1].getName()+")");
            return this.getObject.apply(this,arguments);
        }
        try{
                JSONObject.getObject.overload('java.lang.String','java.lang.reflect.Type').implementation = function(){
                    console.log("fastjson.JSONObject.getObject("+arguments[0]+", "+arguments[1].getTypeName()+")");
                    return this.getObject.apply(this,arguments);
                }
                JSONObject.getObject.overload('java.lang.String','com.alibaba.fastjson.TypeReference').implementation = function(){
                    console.log("fastjson.JSONObject.getObject("+arguments[0]+", "+arguments[1].getType().getTypeName()+")");
                    return this.getObject.apply(this,arguments);
                }
        }
        catch(e2){
            console.log("warning: maybe version < 1.2.33");
        }

        var genGetValueImpl = function(typeGot){
            var implFunc = function(){
                var rrr = this["get"+typeGot].apply(this,arguments);
                console.log("fastjson.JSONObject.get"+typeGot+"("+arguments[0]+")->"+rrr.toString());
                return rrr;
            };
            return implFunc;
        }
        const typeList = [
            "Boolean",
            "Bytes",
            "BooleanValue",
            "Byte",
            "ByteValue",
            "Short",
            "ShortValue",
            "Integer",
            "IntValue",
            "Long",
            "LongValue",
            "Float",
            "FloatValue",
            "Double",
            "DoubleValue",
            "BigDecimal",
            "BigInteger",
            "String",
            "Date",
            "SqlDate",
            "Timestamp"
        ];
        for (var i = 0; i < typeList.length; i++) {
            JSONObject["get"+typeList[i]].implementation = genGetValueImpl(typeList[i]);
        }
    }
    catch (e) {
        console.log("warnning: handled exception->"+e);
    }

    try{
        console.log("hook com.alibaba.fastjson.JSONPath");
        var JSONPath = Java.use("com.alibaba.fastjson.JSONPath");
        JSONPath.eval.implementation = function(){
            console.log("fastjson.JSONPath.eval("+arguments[0]+", "+arguments[1]+")");
            return this.eval.apply(this,arguments);
        }
        JSONPath.extract.implementation = function(){
            console.log("fastjson.JSONPath.extract("+arguments[0]+", "+arguments[1]+")");
            return this.extract.apply(this,arguments);
        }
        JSONPath.size.implementation = function(){
            var rrr = this.size.apply(this,arguments);
            console.log("fastjson.JSONPath.size("+arguments[0]+", "+arguments[1]+")->"+rrr);
            return rrr;
        }
        JSONPath.contains.implementation = function(){
            var rrr = this.contains.apply(this,arguments);
            console.log("fastjson.JSONPath.contains("+arguments[0]+", "+arguments[1]+")->"+rrr);
            return rrr;
        }
        JSONPath.containsValue.implementation = function(){
            var rrr = this.containsValue.apply(this,arguments);
            console.log("fastjson.JSONPath.containsValue("+arguments[0]+", "+arguments[1]+", "+arguments[2]+")->"+rrr);
            return rrr;
        }
    }
    catch(e){
        console.log("warning: handled exception->"+e);
    }
});