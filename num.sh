#!/bin/bash

sum=0

while true
do
   read -p "enter a number or press an enter: " num

if [[ -z $num ]]; then 
    break
else
   (( sum += num ))
fi
done

echo "total number is $sum"