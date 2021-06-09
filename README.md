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
```

## compile example

from this repo foldeR:

```
$ vi build.sh    # change path to monetdb build
$ ./build.sh
```


## run example

you can't run the example directly using a file:// path, you need a webserver.

for example:
```
$ python3 -m http.server
```


