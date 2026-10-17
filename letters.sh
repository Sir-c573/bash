#!/bin/bash

read -p "enter letters:  " -a arr

reversed=()

for item in "${arr[@]}"
do
    found=0

for u in "${reversed[@]}"     
do  
    if [[ $u == $item ]]; then
    found=1
    break
fi

done
     if ((found==0)); then
     reversed+=($item)
     fi
done

for ((i=${#reversed[@]}-1;i>=0;i--))
do 
    echo -n "${reversed[i]}"
done
echo