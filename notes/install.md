# Lua5.3.3安装

- 下载源码包

 从[Lua官网](http://www.lua.org/ftp/)下载最新或稳定版本源码包
```
$wget http://www.lua.org/ftp/lua-5.3.3.tar.gz
```

- 解压
```
$tar zxf lua-5.3.3.tar.gz
```

- 安装
```
$cd lua-5.3.3
$make macosx test
$sudo make install
```
注意：如果不用sudo安装，容易出现`permission denied`

- 查看Lua安装路径
```
$which lua
/usr/local/bin/lua
```

- 查看版本
```
$lua -v
Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio
```