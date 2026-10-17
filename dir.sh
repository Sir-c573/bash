#!/bin/bash

read -p "enter a directory path: " path

if [[ ! -e $path ]]; then
    echo "path does't exist "
    exit 1
fi

if [[-d $path ]]; then
    echo "no such a file or directory "

mkdir -p compressed

for file in "$path"/*.txt
do
  
  [[ -e "file" ]] || continue

  size=$(stat -c%s "$file")
  if (( size > 50 * 1024 *1024 )); then
    echo "Warning!! $file is larger than 50 "
    rm "$file"
    else
    cp "$file" compressed/
 fi
 done
 echo "done"