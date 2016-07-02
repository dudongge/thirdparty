#!/usr/bin/env bash
dir=$(cd `dirname $0`; pwd)
builddir="$dir/build"
tmpdir="$dir/tmp"

CFLAGS_OLD=$CFLAGS
LDFLAGS_OLD=$LDFLAGS
export CFLAGS=-I${dir}/../gflags/build/include 
export LDFLAGS=-L${dir}/../gflags/build/lib

rm -rf "$builddir"

mkdir ${tmpdir} && cd ${tmpdir}
cmake -DCMAKE_INSTALL_PREFIX=${builddir} ${dir}/googletest/googletest
make && make install

rm -rf ${tmpdir}/*
cmake -DCMAKE_INSTALL_PREFIX=${builddir} ${dir}/googletest/googlemock
make && make install

rm -rf ${tmpdir}

for file in lib{32,64}_{debug,release}; do
  echo "$dir/$file"
  rm -rf "$dir/$file" && ln -sf "$builddir/lib" "$dir/$file"
done

rm -f $dir/include && ln -sf $builddir/include $dir/include

export CFLAGS=$CFLAGS_OLD
export LDFLAGS=$LDFLAGS_OLD
