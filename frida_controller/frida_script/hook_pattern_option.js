// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log('hook java.util.regex.Pattern');
    try{
        var Pattern = Java.use("java.util.regex.Pattern");
        // var Matcher = Java.use("java.util.regex.Matcher");
    }
    catch (e) {
        console.error(e);
    }
    var thisSerialize = function(obj){
        return obj.pattern();
    }
    const cmMap = [{
        class: Pattern,
        methods: [
            {
                name: "compile",
                overload: ['java.lang.String'],
                argsPos: [0],
            },
            {
                name: "compile",
                overload: ['java.lang.String','int'],
                argsPos: [0, 1],
            },
            {
                name: "matcher",
                overload: ['java.lang.CharSequence'],
                argsPos: [0],
                needThis: true,
                thisSerialize: thisSerialize,
            },
            {
                name: "matcher",
                overload: ['java.lang.String','java.lang.CharSequence'],
                argsPos: [0, 1],
            },
            {
                name: "split",
                overload: ['java.lang.CharSequence'],
                argsPos: [0],
                needThis: true,
                thisSerialize: thisSerialize,
            },
            {
                name: "split",
                overload: ['java.lang.CharSequence','int'],
                argsPos: [0, 1],
                needThis: true,
                thisSerialize: thisSerialize,
            },
            {
                name: "splitAsStream",
                argsPos: [0],
                needThis: true,
                thisSerialize: thisSerialize,
            },
        ],
    },];
    for(var cmi = 0; cmi < cmMap.length ; cmi++){
        var cm = cmMap[cmi];
        for(var methodi = 0; methodi < cm.methods.length; methodi++){
            var method = cm.methods[methodi];
            if(method.overload){
                cm.class[method.name].overload.apply(this, cm.overload).implementation = hookFactory(
                    "Pattern", cm.argsPos, false, cm.needThis ? cm.needThis : false, cm.thisSerialize, false);
            }
        }
    }
});