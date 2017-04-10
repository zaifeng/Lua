### 类型
#### Lua有8种基础类型
1. nil
- 该类型只有一个值nil，未赋值的全局变量默认是nil，把nil赋值给一个全局变量等于删除它
2. boolean
- 有true和false，在Lua中任何值都可以表示一个条件，Lua将false和nil视为`假`，其他值全视为`真`例如 0 和 ""
3. number
4. string
- Lua字符串是不可变值，不能像C一样修改某个字符
5. table
6. function
7. thread
8. userdata

通过type方法可以获取变量的类型（type总返回一个字符串）