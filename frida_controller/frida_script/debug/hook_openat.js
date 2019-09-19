try{
    var openat_Pointer = Module.findExportByName(null,"openat");
    var open_Pointer = Module.findExportByName(null,"open");
}catch(e){
    console.log(e);
}
console.log("hook at "+openat_Pointer);
Interceptor.attach (openat_Pointer, {
    onEnter: function (args) {
        console.log("===========openat===========");
        // console.log("[dirfd]:--> "+args[0]);
        console.log("[path]:--> "+args[1].readUtf8String());
        console.log("===========openat===========");
    },
    onLeave: function (retval) {
        
    }
});
Interceptor.attach (open_Pointer, {
    onEnter: function (args) {
        // console.log("===========open===========");
        // console.log("[dirfd]:--> "+args[0]);
        var ppp = args[0].readUtf8String();
        if(ppp.includes("odex")||ppp.includes("art")||ppp.includes("oat")||ppp.includes("dex")){

        console.log("[path]:--> "+ppp);
        }
        // console.log("===========open===========");
    },
    onLeave: function (retval) {
        
    }
});