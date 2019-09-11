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