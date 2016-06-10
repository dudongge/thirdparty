#!/usr/bin/env bash
dir="$(cd `dirname $0`; pwd)"
cd "$dir/glog"
./configure && make clean && make
for file in  $dir/glog/src/glog/*.h 
do
  echo $file
  ln -sf "$file" "$dir/"
done

