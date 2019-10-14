const NULLTOKEN = "`null`";
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

function checkReflectType(typeObj){
    // public static Type canonicalize(Type type) {
    //     if (type instanceof Class) {
    //       Class<?> c = (Class<?>) type;
    //       return c.isArray() ? new GenericArrayTypeImpl(canonicalize(c.getComponentType())) : c;
      
    //     } else if (type instanceof ParameterizedType) {
    //       ParameterizedType p = (ParameterizedType) type;
    //       return new ParameterizedTypeImpl(p.getOwnerType(),
    //           p.getRawType(), p.getActualTypeArguments());
      
    //     } else if (type instanceof GenericArrayType) {
    //       GenericArrayType g = (GenericArrayType) type;
    //       return new GenericArrayTypeImpl(g.getGenericComponentType());
      
    //     } else if (type instanceof WildcardType) {
    //       WildcardType w = (WildcardType) type;
    //       return new WildcardTypeImpl(w.getUpperBounds(), w.getLowerBounds());
      
    //     } else {
    //       // type is either serializable as-is or unsupported
    //       return type;
    //     }
    // }

    // Type instance :
    // http://androidxref.com/7.1.2_r36/xref/libcore/luni/src/main/java/libcore/reflect/
    //      GenericArrayTypeImpl.java
    //      ParameterizedTypeImpl.java
    //      TypeVariableImpl.java
    //      WildcardTypeImpl.java

    if(!Java.available){
        return NULLTOKEN;
    }
    if(typeObj.$className == "java.lang.Class"){
        var clazzClass = Java.use("java.lang.Class");
        try{
            var obj = Java.cast(typeObj, clazzClass);
            return obj.getName();
        }
        catch (e) {
            console.error("[x] checkReflectType: " + e);
            console.error("[x] this Type obj is not Class, return null token");
        }
    }
    else{
        // TODO
        return NULLTOKEN;
    }
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
        for(var argi = 0; argi < arg_data.length ; argi++){
            var arg = arg_data[argi];
            data += arg!=null ? arg.toString() : NULLTOKEN;
            data += ", ";
        }
        if(data){
            data = data.substring(0, data.length-2);
        }
    }
    else if(arg_data!=null){
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
        var callbackArguments = [className + "." + hookMethod, 0, argList, ];
        if(needRet){
            if(retval!=null){
                callbackArguments.push(retval.toString());
            }
            else{
                callbackArguments.push(NULLTOKEN);
            }
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
        else{
            callbackArguments.push(undefined);
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

function hookFactoryFromMap(cmMap){
    for(var cmi = 0; cmi < cmMap.length ; cmi++){
        var cm = cmMap[cmi];
        var classTag = cm.tag ? cm.tag : cm.class.getClass().toString();
        for(var methodi = 0; methodi < cm.methods.length; methodi++){
            var method = cm.methods[methodi];
            var handle;
            if(method.overload){
                handle = cm.class[method.name].overload.apply(this, method.overload);
            }
            else{
                handle = cm.class[method.name];
            }
            handle.implementation = hookFactory(
                classTag, method.name, method.argsPos,
                method.needRet ? method.needRet : false, 
                method.needThis ? method.needThis : false,
                method.thisSerialize, false);
        }
    }
}