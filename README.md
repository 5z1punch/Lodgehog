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
- [ ] log 格式处理
- [ ] mask class generator
- [ ] 简化运行流程（方便调试）