#!/usr/bin/env bash
dir=$(cd `dirname $0`; pwd)
builddir="$dir/build"

rm -rf "$builddir"  && cd "$dir/czmq"
CFLAGS_OLD=$CFLAGS
LDFLAGS_OLD=$LDFLAGS
export CFLAGS=-I${dir}/../libzmq/build/include 
export LDFLAGS=-L${dir}/../libzmq/build/lib
./autogen.sh
./configure --prefix="$builddir" && make && make install

for file in lib{32,64}_{debug,release}; do
  echo "$dir/$file"
  rm -rf "$dir/$file" && ln -sf "$builddir/lib" "$dir/$file"
done

rm -f $dir/include && ln -sf $builddir/include $dir/include

export CFLAGS=$CFLAGS_OLD
export LDFLAGS=$LDFLAGS_OLD
