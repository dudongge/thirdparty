#!/usr/bin/env bash
dir=$(cd `dirname $0`; pwd)
builddir="$dir/build"

rm -rf "$builddir"  && cd "$dir/gflags"
./autogen.sh &&  ./configure --prefix="$builddir" && make && make install

for file in lib{32,64}_{debug,release}; do
  echo "$dir/$file"
  rm -rf "$dir/$file" && ln -sf "$builddir/lib" "$dir/$file"
done

rm -f $dir/include && ln -sf $builddir/include/gflags $dir/include
