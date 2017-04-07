# Lua基本语法

### 第一个Lua程序

### 脚本式编程

 退出交互模式
```
os.exit()
```
或者
```
Ctrl + C
```
或者
```
Ctrl + D
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

后者便于调试，需要注意的是，**减号\-** 和 **中括号\[\[** 之间不能有空格
### 标识符
 标识符命名规则:以一个字母 A 到 Z 或 a 到 z 或下划线 _ 开头后加上0个或多个字母，下划线，数字（0到9）
 
 其中，字母值跟本地语言环境变量有关

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