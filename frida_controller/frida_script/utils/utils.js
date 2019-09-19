function getSdkVersion(){
    var buffer = Memory.alloc(8);
    var keyBuffer = Memory.alloc(32);
    keyBuffer.writeUtf8String("ro.build.version.sdk");
    var __system_property_get_ptr = Module.findExportByName(null,"__system_property_get");
    var __system_property_get = new NativeFunction(__system_property_get_ptr, 'int', ['pointer', 'pointer']);
    __system_property_get(keyBuffer,buffer);
    var versionStr = buffer.readCString();
    return parseInt(versionStr);
}

function fridaCallback(method, tid, arg_data, ret_data, handle_data, handle){
    if(!tid && Java.available){
        tid = Java.use("android.os.Process").myTid();
    }
    var data = "";
    if(arg_data.constructor==String){
        data = arg_data;
    }
    else if(arg_data.constructor==Array){
        for(var arg in arg_data){
            data += arg.toString()+", ";
        }
        if(data){
            data = data.substring(0, data.length-2);
        }
    }
    else{
        data = arg_data.toString();
    }
    send({
        type: "METHOD",
        method: method,
        tid: tid,
        data: data,
        ret: ret_data,
        _this: handle_data,
        handle: handle,
    });
}

function getIdHashCode(javaObject){
    var hashcode = "static";
    if(Java.available){
        const javaSystem = Java.use("java.lang.System");
        try{
            hashcode = parseInt(javaSystem.identityHashCode(javaObject)).toString(16);
        }
        catch(e){}
    }
    return hashcode;
}

function hookFactory(className, hookMethod, argsPos = [], needRet = false, needThis = false, 
    thisSerialize=undefined ,needHadle = false){
    return function(){
        const retval = this[hookMethod].apply(this,arguments);
        var argList = [];
        for(var i = 0; i < argsPos.length; i++){
            if(argsPos[i]>=arguments.length){
                console.error("args pos exceeds the number of parameters: ");
                console.error(className+"."+hookMethod+" need arg at `"+argsPos[i]+"`");
                argList[i] = null;
            }
            else{
                argList[i] = arguments[argsPos[i]];
            }
        }
        callbackArguments = [className + "." + hookMethod, 0, argList, ];
        if(needRet){
            callbackArguments.push(retval.toString());
        }
        else{
            callbackArguments.push(undefined);
        }
        if(needThis){
            if(thisSerialize){
                callbackArguments.push(thisSerialize(this));
            }
            else{
                callbackArguments.push(this);
            }
        }
        if(needHadle){
            callbackArguments.push(getIdHashCode(this));
        }
        else{
            callbackArguments.push(undefined);
        }
        fridaCallback.apply(this, callbackArguments);
        return retval;
    }
}