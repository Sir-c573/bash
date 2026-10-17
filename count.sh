#!/bin/bash

arr=(1 2 3 4 5 6)
min=${arr[0]}
max=${arr[0]}
even_count=0


for num in "${arr[@]}"
do
  if (( num > max )); then
      max=$num
  fi
  
  if (( num < min )); then
      min=$num
  fi

  if (( num%2 == 0 )); then
         ((even_count++))
  fi
  done


echo "$min"
echo "$max"
echo "$even_count"