### OpenResty安装

```
export KERNEL_BITS=64
./configure --with-cc-opt='-I/usr/local/Cellar/pcre/8.40/include/' \
       --with-ld-opt='-L/usr/local/Cellar/pcre/8.40/lib' \
       --with-openssl=/Users/zaifeng/Downloads/Sources/openssl-1.0.2k -j4
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