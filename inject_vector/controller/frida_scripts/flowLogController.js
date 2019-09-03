//var xCmd = ""
if("undefined"== typeof xCmd){
    console.log("input cmd what u want to do")
}
else{
    Java.perform(function () {
        console.log('java class loader start--------->');
        try{
            var FlowLog = Java.use("FlowLogNG");
        }
        catch (e) {
            console.log(e);
        }
        switch(xCmd){
            case "startLog":
                console.log("log start");
                FlowLog.startLog();
                break;
            case "stopLog":
                console.log("log stop");
                FlowLog.stopLog();
                break;
            case "closeIO":
                console.log("closeIO, and u cant startLog until restart app");
                FlowLog.stopLog();
                console.log("wait 2s, for writing finishing");
                setTimeout(function(){FlowLog.closeAllStream();console.log("all stream closed")},2000);
                break;
            case "flushIO":
                FlowLog.flushAllStream();
                console.log("all stream flushed");
                break;
             default:
                console.log("cmd illegal");
        }
    });
}
