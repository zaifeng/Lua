# Luarocks 2.4.2 安装

### 下载源码
```
#curl -R -O http://luarocks.github.io/luarocks/releases/luarocks-2.4.2.tar.gz
```

### 解压并安装
```
#tar zxf luarocks-2.4.2.tar.gz
#cd luarocks-2.4.2

#./configure --prefix=/usr/local/luarocks/ --rocks-tree=/usr/local/lib/luarocks/
#make build
#make install
```
 具体configure参数参见[luarocks官网](https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Unix)


### 软链接
```
#ln -s /usr/local/luarocks/bin/luarocks-5.3 /usr/local/bin/luarocks
#ln -s /usr/local/luarocks/bin/luarocks-admin-5.3 /usr/local/bin/luarocks-admin
```

### 安装插件
```
$sudo luarocks install luasocket
```
 一般用户没有`/usr/local/lib`的权限，所以需要sudo一下
 
### 查看已安装插件列表
```
$luarocks list
```

### 更多查看帮助命令
```
$luarocks -h
```