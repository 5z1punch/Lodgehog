# Logehog

## introduction
- smali代码级插桩、函数替换
- 注入重打包的 OAT
- 配合 frida 动态 hook 和调度桩代码
- 稳定，高效
- 用于字符串逻辑分析，以挖掘 scheme e逻辑处理导致的可远程利用的漏洞

## requirements
- frida
- 21 <= android api level < 26

## usage
1. python runner.py path_to_app.apk app_package_name java_package_name_for_monitor_split_by_comma
    第 3 个参数是想要插桩的 java 包名，如果有多个使用 `,` 分割，中间不要有空格。
2. 第一次运行会花费很长时间进行插桩和重打包，等待结束后按照输出的提示操作，例如启动 frida-server 等。期间手机可能会重启，请保持adb连接。
3. 等待app启动并初始化完，做完前置操作（比如登陆），然后在console中回车继续程序，这会attach frida，最后使用 am start 命令调起想要分析的scheme，桩代码和frida输出的内容会以时间戳命名存储在 /log 目录中。
4. 通过分析 log 变形 scheme，直到到达某个可能触发远程漏洞的分支上。

## auxiliary
- Atlas