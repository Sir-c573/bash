#!bin/bash

read -p "enter time: " time

if [[ $time =~ ^[0-9]+$ ]]; then
 
 if ((time >0 && time <=23)); then
     if((time >0 && time <=11)); then 
     echo "AM"

  else
     echo "PM"
fi
  else 
    echo "the number should be between 0-23"
    fi
else 
echo "Not a number"
fi