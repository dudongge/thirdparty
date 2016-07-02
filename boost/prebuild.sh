#!/usr/bin/env bash
dir=$(cd `dirname $0`; pwd)
builddir="$dir/build"

rm -rf "$builddir"  && cd "$dir/boost"
./bootstrap.sh --with-libraries=all --with-python=python --prefix="$builddir"
./b2 --prefix="$builddir" install

for file in lib{32,64}_{debug,release}; do
  echo "$dir/$file"
  rm -rf "$dir/$file" && ln -sf "$builddir/lib" "$dir/$file"
done

rm -f $dir/include && ln -sf $builddir/include/boost $dir/include

