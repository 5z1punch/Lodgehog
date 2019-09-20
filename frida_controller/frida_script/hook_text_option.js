Java.perform(function() {
    // html decode
    const android_text_Html = Java.use("android.text.Html");
    const fromHtmlOverload = [];
    if(sdkVersion < 24){
        fromHtmlOverload.push(["java.lang.String", "android.text.Html$ImageGetter","android.text.Html$TagHandler"]);
    }
    else{
        fromHtmlOverload.push(["java.lang.String","int", "android.text.Html$ImageGetter","android.text.Html$TagHandler"]);
    }
    for (let i = 0; i < fromHtmlOverload.length; i++) {
        android_text_Html.fromHtml.overload.apply(this,fromHtmlOverload[i]).implementation = hookFactory(
            "Html", "fromHtml", [0], true, false, undefined, false
        );
    }
});
