###第二部分

- Lua 提供了一个名为require的高层函数来加载模块
- 可以通过以下代码，强制加载模块

```
package.loaded("foo") = nil
require("foo")
```
- **require** 用于搜索Lua文件的路径放在变量package.path中，当Lua启动后，便以环境变量 `LUA_PATH` 的值来初始化这个变量，如果没找到 `LUA_PATH` ，则使用编译时定义的默认路径来初始化。
- 