// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log('hook java.util.regex.Pattern');
    try{
        var Pattern = Java.use("java.util.regex.Pattern");
        var Matcher = Java.use("java.util.regex.Matcher");
        var Exc = Java.use('java.lang.Exception');
        var LLog = Java.use('android.util.Log');
        // var List = Java.use("java.util.List");
    }
    catch (e) {
        console.log(e);
    }

    Pattern.compile.overload('java.lang.String').implementation = function(){
        console.log("Pattern.compile("+arguments[0]+")");
        return this.compile.apply(this,arguments);
    }

    Pattern.compile.overload('java.lang.String','int').implementation = function(){
        console.log("Pattern.compile("+arguments[0]+", "+arguments[1]+")");
        return this.compile.apply(this,arguments);
    }

    Pattern.matcher.overload('java.lang.CharSequence').implementation = function(){
        console.log("Pattern("+this.pattern()+").matcher("+arguments[0]+")");
        return this.matcher.apply(this,arguments);
    }
    Pattern.matcher.overload('java.lang.String','java.lang.CharSequence').implementation = function(){
        console.log("Pattern.matcher("+arguments[0]+", "+arguments[1]+")");
        return this.matcher.apply(this,arguments);
    }
    Pattern.split.overload('java.lang.CharSequence').implementation = function (){
        console.log("Pattern("+this.pattern()+").split("+arguments[0]+")");
        return this.split.apply(this,arguments);
    }
    Pattern.split.overload('java.lang.CharSequence','int').implementation = function(){
        console.log("Pattern("+this.pattern()+").split("+arguments[0]+", "+arguments[1]+")");
        return this.split.apply(this,arguments);
    }
    Pattern.splitAsStream.implementation = function(){
        console.log("Pattern("+this.pattern()+").splitAsStream("+arguments[0]+")");
        return this.splitAsStream.apply(this,arguments);
    }
});