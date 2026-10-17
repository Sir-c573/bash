#!/bin/bash

password="123"

for ((i=0; i<3; i++))
do
    read -sp "Enter password: " pass


    if [[ $pass == $password ]]; then
        echo "Access Granted"
        exit 0
    else
        echo "Wrong password, try again"
    fi
done

echo "Account Locked"