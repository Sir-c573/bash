#!/bin/bash

read -p "enter a file name: " file

if [[ ! -f $file ]]; then
 echo "file does't exist "
 exit 1
fi

lines=1
words=1

while read -r line 
do
   ((lines++))

   for word in $line 
   do
     ((words++))

done 

done < "$file"
echo "Lines: $lines"
echo "Words: $words"