#!/usr/bin/env bash
dir=$(cd `dirname $0`;pwd)
for file in $dir/googletest/googletest/include/gtest/*.h
do
  echo "$file"
  ln -sf "$file" "$dir/"
done

