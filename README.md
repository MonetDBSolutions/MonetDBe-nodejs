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
$ emcc \
    libmonetdbe.a \
    ../../common/stream/libstream.a \
    ../../sql/backends/monet5/libmonetdbsql.a \
    ../../monetdb5/tools/libmonetdb5.a \
    -o monetdb.html
```

