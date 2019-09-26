global.DEBUG = false;
Java.perform(function() {
    global.JExc = Java.use('java.lang.Exception');
    global.JLLog = Java.use('android.util.Log');
});
const getStackTrace = function(){
    var st = "";
    if(Java.available){
        const e = global.JExc.$new("");
        const log = global.JLLog.$new();
        st = log.getStackTraceString(e).slice(23);
    }
    return st;
};
