### 函数

- 只有一个参数的时候，函数的圆括号可以省略，例如
```
print("Hello world!!")  <---->  print "Hello world"
dofile("a.lua")         <---->  dofile "a.lua"
f({x=20,y=10})          <---->  f{x=10,y=20}
hello({})               <---->  hello{}
```

- 所有Lua标准程序中的函数都是用C语言写的
- 函数调用的时候，若有多余参数，则舍弃，若实参不足，则多余的形参初始化为nil
- Lua不可在形参中提供默认值，可以通过下列方式获得默认值
```
function incrNum(n) 
    local n = n or 1
    num = num + n
end
```

- 对于多返回值的函数，可以用一对括号 包住函数，使其返回一个值