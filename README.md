# Lodgehog

## TODO LIST
- [ ] inject_vector 编译脚本 (windows & linux) 依赖参数化
    - windows 完成， 其他平台后续调试时再做
- [x] method_rewritor.injector 依赖修正
- [ ] runner: AXML parser & get target_java_packages
- [x] dex 分包 ， 方法引用超过 65535
    - 记录 maxref 前的方法定义数，分包时拆分出去
- [x] 正常: dex 分包后，odex中dex个数会变化，此时能否正常加载？
- [x] frida controller
- [x] log 格式处理
- [ ] mask class generator
- [x] 简化运行流程（方便调试）
- [ ] String.hashCode 无法获得字符串

## ISSUES
- [ ] lief 加载 150M 以上的bin时，使用内存会超过800M，可能导致 **python32** 申请内存失败
- [ ] win 环境下，python 通过 subprocess 调用 adb 命令，可能发生 pipe 管道阻塞，导致程序卡住。