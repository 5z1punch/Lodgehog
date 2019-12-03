Java.perform(function(){
    const FridaCaller = Java.use("com.xlab.lodgehog.FridaCaller");
    FridaCaller.callFrida.implementation = function(tid, methodName, returnStr, paramsStrList){
        fridaCallback(methodName, tid, paramsStrList, returnStr, null, null);
        // if(methodName=="String.hashCode" && returnStr=="-1408496386"){
        //     console.log(getStackTrace());
        // }
    }
});