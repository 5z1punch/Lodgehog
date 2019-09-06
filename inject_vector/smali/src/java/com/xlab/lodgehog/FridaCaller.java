package com.xlab.lodgehog;

import android.os.Process;
import android.util.Log;

public class FridaCaller{
    public static boolean logFlag = false;
//    public static int pid = Process.myPid();
    public static boolean getLogFlag(){
        return logFlag;
    }
    public static void startLog(){
        logFlag = true;
    }
    public static void stopLog(){
        logFlag = false;
    }
    public static String obj2String(Object logParam){
        String logParamString = "";
        if(logParam == null){
            logParamString = "null@192e8asj";
        }
        else{
            try{
                logParamString = logParam.toString();
            }
            catch (Throwable e){
                logParamString = "toStrE@"+e.getMessage();
            }
        }
        return logParamString;
    }
    public static void preCall(String methodName,Object returnObj, Object... logParams){
        if(!logFlag){
            return;
        }
        try{
            int tid = Process.myTid();
            String returnString = obj2String(returnObj);
            String paramsStrList[] = new String[logParams.length];
            for(int i=0; i< logParams.length; i++){
                paramsStrList[i] = obj2String(logParams[i]);
            }
            callFrida(tid, methodName, returnString, paramsStrList);
        }
        catch (Throwable throwable) {
            Log.e("lodgehog.FridaCaller",throwable.getMessage());
        }
    }
    public static void callFrida(int tid, String methodName, String returnStr, String[] paramsStrList){
        if(logFlag){
            // de optimize
            Log.d("lodgehog", methodName+"@"+tid);
        }
    }
}