# Lua基本语法

### 第一个Lua程序
```
print("Hello Lua!")
```
保存为hello.lua,并运行

```
$lua hello.lua
Hello Lua!
```
### 交互模式
不输入任何参数运行解释器的时候，进入交互模式
```
$ lua
Lua 5.3.4  Copyright (C) 1994-2017 Lua.org, PUC-Rio
>
```
可通过`-i`指定一个程序块（Lua文件）
```
$ lua -i hello.lua
Lua 5.3.4  Copyright (C) 1994-2017 Lua.org, PUC-Rio
Hello Lua
>
```
**在交互模式中，如果要打印任何表达式的值，可以用 `=` 开头并跟随一个表达式**

以下方式退出交互模式
- ``os.exit()`` 
- ``Ctrl + C`` 
- ``Ctrl + D``

### 脚本式编程
 同shell
 在lua代码文件首行加入
 
```
#!/usr/local/bin/lua
```
或
```
#!/usr/bin/env lua
```
可当成脚本执行
```
$chmod u+x ./hello.lua
$./hello.lua
Hello Lua
```

### 注释
 行注释
```
-- line comment
```
 块注释
```
--[[
block comment
]]
```
或者
```
--[[
block comment
--]]
```

后者便于调试，需要注意的是，**两个减号\-** 和 **中括号\[\[** 之间不能有空格
### 标识符
 标识符命名规则:以一个字母 A 到 Z 或 a 到 z 或下划线 _ 开头后加上0个或多个字母，下划线，数字（0到9）
 
要注意的地方
1. 字母值依赖与区域设置（locale），通用一点最好还是用英文，以免在缺少语境的机器上无法运行
2. 应当避免使用下划线开头后跟一个或多个大写字母的标识符（Lua有特殊用途）

### 关键词
 一共21个关键词
- Key
    - function
    - local
    - return
    - true
    - false
    - nil
    - end
- Loop
    - for
    - in
    - while
    - do
    - break
    - if
    - then
    - elseif
    - else
    - repeat
    - until
- Logic
    - and
    - or
    - not

### 全局变量
 默认情况下，变量总认为是全局的，全局变量不需要声明，访问未声明的全局变量返回`nil`
 
```
> print(a)
nil
> a = 10
> print(a)
10
```
 删除全局变量
```
> a = nil
> print(a)
nil
```

### 解释器程序
解释器程序的用法如下
```
$lua  [选项参数]   [脚本[参数]]
```
所有这些参数都是可选的

几个常用`选项参数`

选项参数 | 含义
---|---
-i | 运行lua文件后，进入交互模式
-e | 执行一句或多句lua代码
-l | 加载库文件

一个下划线变量例子`_PROMPT=' Lua >'`
```
$lua -e "_PROMPT='Lua >'"
Lua 5.3.4  Copyright (C) 1994-2017 Lua.org, PUC-Rio
Lua >
```
`_PROMPT`用于修改交互模式提示符
