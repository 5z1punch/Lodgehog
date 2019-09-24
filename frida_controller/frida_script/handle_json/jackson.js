// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log("com.fasterxml.jackson hook start -------->");
    try{
        console.log("hook com.fasterxml.jackson.core.JsonFactory");
        var JsonFactory = Java.use("com.fasterxml.jackson.core.JsonFactory");
        JsonFactory.createJsonParser.overload('java.lang.String').implementation = hookFactory("jackson.JsonFactory", 
        "createJsonParser", [0], false, false, undefined, false);
        JsonFactory.createParser.overload('java.lang.String').implementation = hookFactory("jackson.JsonFactory", 
        "createParser", [0], false, false, undefined, false);
    }
    catch (e) {
        console.log("warning: handled exception->"+e);
    }

    try{
        console.log("hook com.fasterxml.jackson.databind.ObjectMapper");
        var ObjectMapper = Java.use("com.fasterxml.jackson.databind.ObjectMapper");
        ObjectMapper.readTree.overload('java.lang.String').implementation = 
        hookFactory("jackson.ObjectMapper", "readTree", [0], false, false, undefined, false);
        ObjectMapper.readValue.overload('java.lang.String','java.lang.Class').implementation = function(){
            var arg_data = [arguments[0], arguments[1].getName()];
            fridaCallback("jackson.ObjectMapper.readValue", 0, arg_data, undefined, undefined, undefined)
            return this.readValue.apply(this,arguments);
        }
        ObjectMapper.readValue.overload('java.lang.String','com.fasterxml.jackson.databind.JavaType').implementation = function(){
            var arg_data = [arguments[0], arguments[1].getErasedSignature()];
            fridaCallback("jackson.ObjectMapper.readValue", 0, arg_data, undefined, undefined, undefined)
            return this.readValue.apply(this,arguments);
        }
        ObjectMapper.readValue.overload('java.lang.String','com.fasterxml.jackson.core.type.TypeReference').implementation = function(){
            var arg_data = [arguments[0], arguments[1].getType().getTypeName()];
            fridaCallback("jackson.ObjectMapper.readValue", 0, arg_data, undefined, undefined, undefined)
            return this.readValue.apply(this,arguments);
        }
    }
    catch (e) {
        console.log("warning: handled exception->"+e);
    }

    try{
        console.log("hook com.fasterxml.jackson.databind.JsonNode");
        var JsonNode = Java.use("com.fasterxml.jackson.databind.JsonNode");
        const JsonNode_cmMap = [
            {
                class: JsonNode,
                tag: "jackson.JsonNode",
                methods: [
                    {
                        name: "findParents",
                        overload: ['java.lang.String','java.util.List'],
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "findParents",
                        overload: ['java.lang.String'],
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "findValues",
                        overload: ['java.lang.String','java.util.List'],
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "findValues",
                        overload: ['java.lang.String'],
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "findValuesAsText",
                        overload: ['java.lang.String','java.util.List'],
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "findValuesAsText",
                        overload: ['java.lang.String'],
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "get",
                        overload: ['java.lang.String'],
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "has",
                        overload: ['java.lang.String'],
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "hasNonNull",
                        overload: ['java.lang.String'],
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "path",
                        overload: ['java.lang.String'],
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "at",
                        overload: ['java.lang.String'],
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "findParent",
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "findPath",
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "findValue",
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "with",
                        argsPos: [0],
                        needRet: true,
                    },
                    {
                        name: "withArray",
                        argsPos: [0],
                        needRet: true,
                    },
                ],
            },
        ];
        hookFactoryFromMap(JsonNode_cmMap);
    }
    catch (e) {
        console.log("warning: handled exception->"+e);
    }
});