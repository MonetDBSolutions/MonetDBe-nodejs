MONETDB=/home/gijs/Work/monetdb/MonetDB
emcc -O3 -I${MONETDB}/tools/monetdbe/ -I${MONETDB}/build \
    ${MONETDB}/build/monetdb5/tools/libmonetdb5.a             \
    ${MONETDB}/build//sql/server/libsqlserver.a                \
    ${MONETDB}/build/sql/common/libsqlcommon.a                \
    ${MONETDB}/build/sql/storage/libsqlstorage.a              \
    ${MONETDB}/build/sql/storage/bat/libbatstore.a            \
    ${MONETDB}/build/sql/backends/monet5/libmonetdbsql.a      \
    ${MONETDB}/build/gdk/libbat.a                             \
    ${MONETDB}/build/common/options/libmoptions.a             \
    ${MONETDB}/build/common/stream/libstream.a                \
    ${MONETDB}/build/common/utils/libmcrypt.a                 \
    ${MONETDB}/build/common/utils/libmprompt.a                \
    ${MONETDB}/build/common/utils/libmsabaoth.a               \
    ${MONETDB}/build/common/utils/libmutils.a                 \
    ${MONETDB}/build/clients/mapilib/libmapi.a                \
    ${MONETDB}/build/clients/mapiclient/libmcutil.a           \
    ${MONETDB}/build/tools/merovingian/utils/libmeroutil.a    \
    ${MONETDB}/build/tools/monetdbe/libmonetdbe.a             \
      example1.c -o monetdb.html
