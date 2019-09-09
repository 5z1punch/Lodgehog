Java.perform(function(){
    Java.deoptimizeEverything();
    const FridaCaller = Java.use("com.xlab.lodgehog.FridaCaller");
    FridaCaller.callFrida.implementation = function(tid, methodName, returnStr, paramsStrList){
        console.log(methodName+"@"+tid);
        // TODO
    }
});