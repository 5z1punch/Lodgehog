// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log("com.alibaba.fastjson hook start -------->");
    try{
        console.log("hook com.alibaba.fastjson.JSON");
        var FastJson = Java.use("com.alibaba.fastjson.JSON");
        try{
            FastJson.parse.overload('java.lang.String','com.alibaba.fastjson.parser.ParserConfig','int')
            .implementation = hookFactory("fastjson.JSON", "parse", [0, 2], false, false, undefined, false);
        }
        catch(e2){
            console.log("warning: maybe version < 1.2.38");
            FastJson.parse.overload('java.lang.String','int')
            .implementation = hookFactory("fastjson.JSON", "parse", [0, 1], false, false, undefined, false);
        }
        const FastJson_cmMap = [{
            class: FastJson,
            tag: "fastjson.JSON",
            methods: [
                {
                    name: "parseObject",
                    overload: ['java.lang.String'],
                    argsPos: [0],
                },
                {
                    name: "parseArray",
                    overload: ['java.lang.String'],
                    argsPos: [0],
                },
                {
                    name: "parseArray",
                    overload: ['java.lang.String','[Ljava.lang.reflect.Type;'],
                    argsPos: [0],
                },
            ],
        },];
        hookFactoryFromMap(FastJson_cmMap);
        FastJson.parseObject.overload('java.lang.String', 'java.lang.reflect.Type', 'int', '[Lcom.alibaba.fastjson.parser.Feature;').implementation = function(){
            var arg_data = [arguments[0], arguments[1].getTypeName()];
            fridaCallback("fastjson.JSON.parseObject", 0, arg_data, undefined, undefined, undefined)
            return this.parseObject.apply(this,arguments);
        }
        FastJson.parseObject.overload('java.lang.String','java.lang.reflect.Type','com.alibaba.fastjson.parser.ParserConfig','com.alibaba.fastjson.parser.deserializer.ParseProcess','int', '[Lcom.alibaba.fastjson.parser.Feature;').implementation = function(){
            var arg_data = [arguments[0], arguments[1].getTypeName(), arguments[4]];
            fridaCallback("fastjson.JSON.parseObject", 0, arg_data, undefined, undefined, undefined)
            return this.parseObject.apply(this,arguments);
        }
        FastJson.parseArray.overload('java.lang.String','java.lang.Class').implementation = function(){
            var arg_data = [arguments[0], arguments[1].getTypeName()];
            fridaCallback("fastjson.JSON.parseObject", 0, arg_data, undefined, undefined, undefined)
            return this.parseArray.apply(this,arguments);
        }
    }
    catch (e) {
        console.log("warning: handled exception->"+e);
    }
    try{
        console.log("hook com.alibaba.fastjson.JSONObject");
        var JSONObject = Java.use("com.alibaba.fastjson.JSONObject");
        const FastJson_cmMap = [{
            class: JSONObject,
            tag: "fastjson.JSONObject",
            methods: [
                {
                    name: "containsKey",
                    argsPos: [0],
                    needRet: true,
                },
                {
                    name: "containsValue",
                    argsPos: [0],
                    needRet: true,
                },
            ],
        },];
        hookFactoryFromMap(FastJson_cmMap);
        JSONObject.getObject.overload('java.lang.String','java.lang.Class').implementation = function(){
            var arg_data = [arguments[0], arguments[1].getName()];
            fridaCallback("fastjson.JSONObject.getObject", 0, arg_data, undefined, undefined, undefined)
            return this.getObject.apply(this,arguments);
        }
        try{
                JSONObject.getObject.overload('java.lang.String','java.lang.reflect.Type').implementation = function(){
                    var arg_data = [arguments[0], arguments[1].getTypeName()];
                    fridaCallback("fastjson.JSONObject.getObject", 0, arg_data, undefined, undefined, undefined)        
                    return this.getObject.apply(this,arguments);
                }
                JSONObject.getObject.overload('java.lang.String','com.alibaba.fastjson.TypeReference').implementation = function(){
                    var arg_data = [arguments[0], arguments[1].getType().getTypeName()];
                    fridaCallback("fastjson.JSONObject.getObject", 0, arg_data, undefined, undefined, undefined)        
                    return this.getObject.apply(this,arguments);
                }
        }
        catch(e2){
            console.log("warning: maybe version < 1.2.33");
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
            JSONObject["get"+typeList[i]].implementation = hookFactory("fastjson.JSONObject", "get"+typeList[i], [0], true, false, undefined, false);
        }
    }
    catch (e) {
        console.log("warnning: handled exception->"+e);
    }

    try{
        console.log("hook com.alibaba.fastjson.JSONPath");
        var JSONPath = Java.use("com.alibaba.fastjson.JSONPath");
        const JSONPath_cmMap = [{
            class: JSONPath,
            tag: "fastjson.JSONPath",
            methods: [
                {
                    name: "eval",
                    argsPos: [0, 1],
                },
                {
                    name: "extract",
                    argsPos: [0, 1],
                },
                {
                    name: "size",
                    argsPos: [0, 1],
                    needRet: true,
                },
                {
                    name: "contains",
                    argsPos: [0, 1],
                    needRet: true,
                },
                {
                    name: "containsValue",
                    argsPos: [0, 1, 2],
                    needRet: true,
                },
            ],
        },];
        hookFactoryFromMap(JSONPath_cmMap);
    }
    catch(e){
        console.log("warning: handled exception->"+e);
    }
});