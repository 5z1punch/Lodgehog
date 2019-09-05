// run app.activity.start --component  com.tencent.weread com.tencent.weread.wxapi.WXEntryActivity --extra string _mmessage_content sada --extra integer _mmessage_sdkVersion 1 --extra string _mmessage_appPackage asdasd --extra bytearray _mmessage_checksum ed2707cc8a4f9ac75954ce95eaa06a63 --extra integer _wxapi_command_type 1 --extra string wx_token_key com.tencent.mm.openapi.token
Java.perform(function () {
    console.log('java native class loader start--------->');
    try{
        var Installer = Java.use("com.android.server.pm.Installer");
        var PackageDexOptimizer = Java.use("com.android.server.pm.PackageDexOptimizer");
        var PackageManagerShellCommand = Java.use("com.android.server.pm.PackageManagerShellCommand");
        var InstallerConnection = Java.use("com.android.internal.os.InstallerConnection");
        var Exc = Java.use('java.lang.Exception');
        var LLog = Java.use('android.util.Log');
    }
    catch (e) {
        console.log(e);
    }

    console.log('function hook start--------->');
    InstallerConnection.dexopt.overload("java.lang.String", "int", "java.lang.String", "java.lang.String","int", "java.lang.String", "int", "java.lang.String","java.lang.String", "java.lang.String").implementation = function(){
        console.log("[InstallerConnection]");
        console.log("apkPath: "+arguments[0]);
        console.log("uid: "+arguments[1]);
        console.log("pkgName: "+arguments[2]);
        console.log("instructionSet: "+arguments[3]);
        console.log("dexoptNeeded: "+arguments[4]);
        console.log("outputPath: "+arguments[5]);
        console.log("dexFlags: "+arguments[6]);
        console.log("compilerFilter: "+arguments[7]);
        console.log("volumeUuid: "+arguments[8]);
        console.log("sharedLibraries: "+arguments[9]);
        // arguments[0] = "/sdcard/xlab.apk";
        var rrr = this.dexopt.apply(this,arguments);
        return rrr;
    }

    PackageManagerShellCommand.onHelp.implementation = function(){
        console.log("PackageManagerShellCommand help");
        return this.onHelp.apply(this,arguments);
    }
    PackageDexOptimizer.performDexOptLI.implementation = function(){
        console.log("performDexOptLI");
        return this.performDexOptLI.apply(this,arguments);
    }
    
});