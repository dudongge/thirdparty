#!/usr/bin/env bash
dir=$(cd `dirname $0`; pwd)
builddir="$dir/build"
GFLAGS_INCLUDE_DIR=${dir}/../gflags/build/include
GFLAGS_LIB_DIR=${dir}/../gflags/build/lib
SNAPPY_INCLUDE_DIR=${dir}/../snappy/build/include
SNAPPY_LIB_DIR=${dir}/../snappy/build/lib

CFLAGS_OLD=$CFLAGS
LDFLAGS_OLD=$LDFLAGS
CFLAGS="-I${GFLAGS_INCLUDE_DIR} -I${SNAPPY_INCLUDE_DIR}"
LDFLAGS="-L${GFLAGS_LIB_DIR} -L${SNAPPY_LIB_DIR}"

rm -rf "$builddir"  && cd "$dir/rocksdb"
make static_lib && INSTALL_PATH=${builddir} make install

for file in lib{32,64}_{debug,release}; do
  echo "$dir/$file"
  rm -rf "$dir/$file" && ln -sf "$builddir/lib" "$dir/$file"
done

rm -f $dir/include && ln -sf $builddir/include/rocksdb $dir/include

export CFLAGS=$CFLAGS_OLD
export LDFLAGS=$LDFLAGS_OLD
