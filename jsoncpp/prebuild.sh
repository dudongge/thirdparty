#!/usr/bin/env bash
dir=$(cd `dirname $0`; pwd)
builddir="$dir/build"
tmpdir="$dir/tmp"

rm -rf "$builddir"

mkdir ${tmpdir} && cd ${tmpdir}
cmake -DBUILD_STATIC_LIBS=ON -DBUILD_SHARED_LIBS=OFF -DCMAKE_INSTALL_PREFIX=${builddir} ${dir}/jsoncpp
make && make install

rm -rf ${tmpdir}

for file in lib{32,64}_{debug,release}; do
  echo "$dir/$file"
  rm -rf "$dir/$file" && ln -sf "$builddir/lib" "$dir/$file"
done

rm -f $dir/include && ln -sf $builddir/include $dir/include
