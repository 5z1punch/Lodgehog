//var xCmd = ""
if("undefined"== typeof xCmd){
    console.log("input cmd what u want to do")
}
else{
    Java.perform(function () {
        console.log('java class loader start--------->');
        try{
            var FridaCaller = Java.use("com.xlab.lodgehog.FridaCaller");
        }
        catch (e) {
            console.log(e);
        }
        switch(xCmd){
            case "startLog":
                console.log("log start");
                FridaCaller.startLog();
                break;
            case "stopLog":
                console.log("log stop");
                FridaCaller.stopLog();
                break;
             default:
                console.log("cmd illegal");
        }
    });
}
