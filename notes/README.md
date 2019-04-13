## Lua Study for OpenResty

- 加载程序块的方式是使用函数==dofile==

该函数会立即执行一个文件

- Lua是有大小写之分的


后者便于调试，需要注意的是，==减号-== 和 ==中括号[[== 之间不能有空格

- Lua中访问一个未初始化的变量不会报错，访问结果是返回一个```nil```

- 通常没有必要删除全局变量，如果一个全局变量的生存周期比较短，那么应该使用局部变量

- 在交互模式中，如要打印任何表达式的值，可以用等号开头，并跟随一个表达式

- Lua有8种基本类型 ```nil``` ```boolean``` ```number``` ```string``` ```userdata``` ```function``` ```thread``` ```table```

- type函数用于返回 类型

- false 和nil 被视为 假，空字符串和数字零 都视为 真

- 一个全局变量在第一次赋值前的默认值是nil，将nil赋值给一个变量等于删除它

- Lua种 ..是字符串连接符号，数字连接，两边必须有 ==空格==

- ```tonumber```, ```tostring```用于数字和字符类型之间的转换

- 求长度操作符 \#

- table如果含Hole(空隙)，则长度以nil元素为结尾，最大索引通过```table.maxn```获取

- table的字符键和数字键 是不重复的，定义table key的时候一定要慎重

- Lua特有的不等号 ~=

- ```x == x or v``` 等价于 ```if not x then x = v end```

- Lua没有三目表达式，但有替代 例如 ```max = (x > y) and x or y```

- table初始化
```
T = {"Monday","Tuesday","Wedsday","Thursday","Friday","Saturday","Sunday"}
```
也可以 
```
T={x=1,y=2}
```

- Lua允许函数有多个返回值

- 多返回值函数，左侧如果多于返回值则 多出的值为nil，右侧返回值如果多，则被丢弃

- 用括号将多返回值函数括起来调用，则返回第一个返回值

- ```select(#, ...)```返回所有变长参数的总和

- loadstring在lua5.2中已弃用，修改为load

- 调用select时，必须传入一个固定实参selector(选择开关)和一系列变长参数。如果selector为数字n,那么select返回它的第n个可变实参，否则只能为字符串"#",这样select会返回变长参数的总数。

- assert函数检查其第一个参数是否为true，若为true则简单地返回该参数，否则就引发一个错误

- unpack从Lua5.2开始 变成```table.unpack```,第二个参数为table的开始index

- ```coroutine.wrap``` 会返回所有应该由除第一个（错误代码的那个布尔量） 之外的由 ```coroutine.resume``` 返回的值。 和 ```coroutine.resume``` 不同， ```coroutine.wrap``` 不捕获任何错误； 所有的错误都应该由调用者自己传递。

- 利用do-end可以显式的声明一个代码块

- 尽可能地使用局部变量是一种良好的编程风格

- Lua不支持switch语句

- 所有Lua标准库中的函数都是用C语言写的

- 如果函数没有或没有足够多的返回值，那么Lua将用nil补充缺失的值

- ```function foo(a,b,c) end```,调用`foo(a,b,c)` 等价于 `foo{a,b,c}`
- 多返回值问题，如果函数调用不是一系列表达式的最后一个值，那么它将只产生一个值

```
function foo()
    return "a","b"    
end

x,y = foo(),20
print(x,y)          ----> a 20
print(20,foo())     ----> 20 a b
```

- Lua 将其所有的全局变量保存在一个常规的`table`中，这个table称为`“环境”`，并将环境table自身保存在一个全局变量_G中

- require 用于搜索 Lua 文件的路径是存放在全局变量 `package.path` 中，当 Lua 启动后，会以环境变量 LUA_PATH 的值来初始这个环境变量。如果没有找到该环境变量，则使用一个编译时定义的默认路径来初始化。
当然，如果没有 `LUA_PATH` 这个环境变量，也可以自定义设置，在当前用户根目录下打开 .profile 文件，例如把 "~/lua/" 路径加入 LUA_PATH 环境变量里：
```
#LUA_PATH
export LUA_PATH="~/lua/?.lua;;"
```
文件路径以 ";" 号分隔，最后的 2 个 ";;" 表示新加的路径后面加上原来的默认路径

- Lua有4个元方法 `__index` , `__newindex` , `__call` , `__tostring`
