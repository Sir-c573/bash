#!/bin/bash

processes=($(ps aux --no-headers --sort=-%mem | head -n 3))

for ((i=0; i<${#processes[@]}; i++))
do
    echo "${processes[i]}"
done