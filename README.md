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
--]]

##Lua中访问一个未初始化的变量不会报错，访问结果是返回一个nil

##通常没有必要删除全局变量，如果一个全局变量的生存周期比较短，那么应该使用局部变量

##在交互模式中，如要打印任何表达式的值，可以用等号开头，并跟随一个表达式

##Lua有8种基本类型 nil boolean number string userdata function thread table

##type函数用于返回 类型

##false 和nil 被视为 假

##Lua种 ..是字符串连接符号，两边必须有空格

##tonumber tostring用于数字和字符类型之间的转换

##求长度操作符 \#

##table如果含Hole，则长度以nil元素为结尾，最大索引通过table.maxn获取

##table的字符键和数字键 是不重复的，定义table key的时候一定要慎重

##Lua特有的不等号 ~=

##x == x or v 等价于 if not x then x = v end

##Lua没有三目表达式，但有替代 例如 max = (x > y) and x or y

##table初始化T = {"Monday","Tuesday","Wedsday","Thursday","Friday","Saturday","Sunday"},也可以 T={x=1,y=2}

