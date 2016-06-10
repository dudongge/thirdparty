#!/usr/bin/evn bash
dir=$(cd `dirname $0`;pwd)
cd "$dir/gflags"
./configure && make clean && make
for file in $dir/gflags/src/gflags/*.h
do
  echo "$file"
  ln -sf "$file" "$dir/"
done 
