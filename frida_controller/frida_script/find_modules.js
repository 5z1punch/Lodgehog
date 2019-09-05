var ms = Process.enumerateModules();
for (var i = 0; i < ms.length; i++) {
    var bbb  = ms[i].base.toInt32();
    var lll = bbb+ms[i].size;
    if(bbb<0xeeeb1a88 && lll>0xeeeb1a88){
        console.log("["+ms[i].name+"]:"+ms[i].base.toString());
        console.log(ms[i].path);

    }
}
