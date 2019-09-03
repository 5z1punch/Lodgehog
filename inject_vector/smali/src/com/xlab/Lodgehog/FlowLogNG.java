
import android.os.Environment;
import android.os.Process;
import android.util.Log;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;

public class FlowLogNG {
    public static String logDir = "flowLogNG/";
    public static boolean logFlag = false;
    public static int pid = Process.myPid();
    public static ConcurrentHashMap<Integer, FileOutputStream> LogFileMap = new ConcurrentHashMap<>();
    public static String getLogDir(){
        return logDir;
    }
    public static void setLogDir(String ld){
        logDir = ld;
    }
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
                logParamString = "`toStrError@"+e.getMessage()+"`";
            }
        }
        return logParamString;
    }
    public static void log(String methodName,Object returnObj, Object... logParams){
        if(!logFlag){
            return;
        }
        try{
            int tid = Process.myTid();
            String logText = methodName+"(";
            String logParamString = "";
            String returnString = obj2String(returnObj);
            for (Object logParam : logParams) {
                logParamString += obj2String(logParam)+", ";
            }
            if(!logParamString.isEmpty()){
                logParamString = logParamString.substring(0,logParamString.length()-2);
            }
            logText += logParamString +")->"+ returnString+"\n";
            if(LogFileMap.containsKey(tid)){
//                Log.d("FlowLog.0","logNum: "+logNum+", type: "+type+", logP: "+logParamString);
                FileOutputStream logFileStream = LogFileMap.get(tid);
                byte[] logByts = logText.getBytes();
                try {
//                    Log.d("FlowLog.1","logNum: "+logNum+", type: "+type+", logP: "+logParamString);
                    logFileStream.write(logByts);
                } catch (IOException e) {
                    Log.e("FlowLog","IOException when write a FOS ");
                    Log.i("FlowLog",logText);
                }
            }
            else {
                File sdcard = Environment.getExternalStorageDirectory();
                File file = new File(sdcard, logDir+pid+"-"+tid+".log");
                try {
                    FileOutputStream logFileStream = new FileOutputStream(file.getAbsolutePath());
                    LogFileMap.put(tid,logFileStream);
                    byte[] logByts = logText.getBytes();
//                    Log.d("FlowLog.2","logNum: "+logNum+", type: "+type+", logP: "+logParamString);
                    logFileStream.write(logByts);
                } catch (FileNotFoundException e) {
//            e.printStackTrace();
                    Log.e("FlowLog","FileNotFoundException when open "+file.getAbsolutePath());
                    Log.i("FlowLog",logText);
                } catch (IOException e) {
//            e.printStackTrace();
                    Log.e("FlowLog","IOException when write "+file.getAbsolutePath());
                    Log.i("FlowLog",logText);
                }
            }
        }
        catch (Throwable throwable) {
            Log.e("FlowLog.log",throwable.getMessage());
        }
    }
    public static void closeAllStream(){
        for(FileOutputStream fos: LogFileMap.values()){
            try {
                fos.close();
            } catch (IOException e) {
//                    e.printStackTrace();
                Log.e("FlowLog","IOException when closs a FOS");
            }
        }
    }
    public static void flushAllStream(){
        for(FileOutputStream fos: LogFileMap.values()){
            try {
                fos.flush();
            } catch (IOException e) {
//                    e.printStackTrace();
                Log.e("FlowLog","IOException when flush a FOS");
            }
        }
    }
}
