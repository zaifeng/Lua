# Lua
Lua Study for Nginx and OpenResty


##退出Lua解释器交互模式

os.exit() 或者Ctrl+C

##加载程序块的方式是使用函数dofile

该函数会立即执行一个文件

##Lua是有大小写之分的

##注释
--行注释

--[[
block comment
]]
或者
--[[
block comment
--]]

后者便于调试，需要注意的是，**减号\-**和**中括号[]**之间不能有空格

##Lua中访问一个未初始化的变量不会报错，访问结果是返回一个nil

##通常没有必要删除全局变量，如果一个全局变量的生存周期比较短，那么应该使用局部变量

##在交互模式中，如要打印任何表达式的值，可以用等号开头，并跟随一个表达式

##Lua有8种基本类型 nil boolean number string userdata function thread table

##type函数用于返回 类型

##false 和nil 被视为 假

##Lua种 ..是字符串连接符号，两边必须有*空格*

##tonumber tostring用于数字和字符类型之间的转换

##求长度操作符 \#

##table如果含Hole，则长度以nil元素为结尾，最大索引通过table.maxn获取

##table的字符键和数字键 是不重复的，定义table key的时候一定要慎重

##Lua特有的不等号 ~=

##x == x or v 等价于 if not x then x = v end

##Lua没有三目表达式，但有替代 例如 max = (x > y) and x or y

##table初始化T = {"Monday","Tuesday","Wedsday","Thursday","Friday","Saturday","Sunday"},也可以 T={x=1,y=2}

##Lua允许函数有多个返回值

##多返回值函数，左侧如果多于返回值则 多出的值为nil，右侧返回值如果多，则被丢弃

##用括号将多返回值函数括起来调用，则返回第一个返回值

##select(#, ...)返回所有变长参数的总和

##loadstring在lua5.2中已弃用，修改为load

##调用select时，必须传入一个固定实参selector(选择开关)和一系列变长参数。如果selector为数字n,那么select返回它的第n个可变实参，否则只能为字符串"#",这样select会返回变长参数的总数。

##assert函数检查其第一个参数是否为true，若为true则简单地返回该参数，否则就引发一个错误

##unpack从Lua5.2开始 变成table.unpack,第二个参数为table的开始index

##coroutine.wrap 会返回所有应该由除第一个（错误代码的那个布尔量） 之外的由 coroutine.resume 返回的值。 和 coroutine.resume 不同， coroutine.wrap 不捕获任何错误； 所有的错误都应该由调用者自己传递。


