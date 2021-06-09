# getting started

## emscripten

download and install https://emscripten.org/

```
$ git clone https://github.com/emscripten-core/emsdk.git
$ cd emsdk
$ ./emsdk install latest
$ ./emsdk activate latest
$ source ./emsdk_env.sh
```

## compile monetdb

* obtain monetdb  https://dev.monetdb.org/hg/MonetDB/
* apply emcc.patch

```
$ mkdir build && cd build
$ export CFLAGS="-w"
$ emcmake cmake .. 
$ cd tools/monetdbe
$ make
$ emcc libmonetdbe.a -o monetdbe.html
```
