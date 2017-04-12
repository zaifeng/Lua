### OpenResty安装

```
export KERNEL_BITS=64
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

#### make

```
$make -j4
-j4 指定make CPU核数
```

#### make install

```
make install
```