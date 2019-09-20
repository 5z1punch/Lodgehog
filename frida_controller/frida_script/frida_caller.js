Java.perform(function(){
    // Java.deoptimizeEverything();
    const FridaCaller = Java.use("com.xlab.lodgehog.FridaCaller");
    FridaCaller.callFrida.implementation = function(tid, methodName, returnStr, paramsStrList){
        fridaCallback(methodName, tid, paramsStrList, returnStr, null, null);
    }
});