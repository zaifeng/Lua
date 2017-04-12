## OpenResty安装


### 安装准备

```
$brew install pcre openssl
```

### 下载OpenResty
```
curl -R -O https://openresty.org/download/openresty-1.11.2.2.tar.gz
tar zxf openresty-1.11.2.2.tar.gz
cd openresty-1.11.2.2
```

### 编译
```
$export KERNEL_BITS=64
$./configure --with-cc-opt='-I/usr/local/Cellar/pcre/8.40/include/' \
       --with-ld-opt='-L/usr/local/Cellar/pcre/8.40/lib' \
       --with-openssl=/Users/zaifeng/Downloads/Sources/openssl-1.0.2k \
       --add-module=/Users/zaifeng/Downloads/Sources/openresty-1.11.2.2/bundle/echo-nginx-module-0.60 -j4
```

实际会转换成如下
```
./configure --prefix=/usr/local/openresty/nginx --with-cc-opt='-O2 -I/usr/local/Cellar/pcre/8.40/include/' 
--add-module=../ngx_devel_kit-0.3.0 
--add-module=../echo-nginx-module-0.60 
--add-module=../xss-nginx-module-0.05 
--add-module=../ngx_coolkit-0.2rc3 
--add-module=../set-misc-nginx-module-0.31 
--add-module=../form-input-nginx-module-0.12 
--add-module=../encrypted-session-nginx-module-0.06 
--add-module=../srcache-nginx-module-0.31 
--add-module=../ngx_lua-0.10.7 
--add-module=../ngx_lua_upstream-0.06 
--add-module=../headers-more-nginx-module-0.32 
--add-module=../array-var-nginx-module-0.05 
--add-module=../memc-nginx-module-0.17 
--add-module=../redis2-nginx-module-0.13 
--add-module=../redis-nginx-module-0.3.7 
--add-module=../rds-json-nginx-module-0.14 
--add-module=../rds-csv-nginx-module-0.07 
--with-ld-opt='-Wl,-rpath,/usr/local/openresty/luajit/lib -L/usr/local/Cellar/pcre/8.40/lib' 
--with-openssl=/Users/zaifeng/Downloads/Sources/openssl-1.0.2k 
--with-http_ssl_module
```

默认已经添加echo、memcache、redis等模块，如重复添加module会导致make失败

#### make

```
$make -j4
-j4 指定make CPU核数
```

#### make install

```
make install
```