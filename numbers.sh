#!/bin/bash
read -p "enter numbers: " -a idk
for num in "${idk[@]}"
do
  if (( num % 2 == 0 )); then
     echo "$num"
  fi
  done 
