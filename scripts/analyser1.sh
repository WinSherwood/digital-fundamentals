#!/bin/bash

for curr_file in $(ls $1)
do
    for n in $(cat $1$curr_file)
    do
        name=$(echo $n | cut -d ":" -f1 )
        age=$(echo $n | cut -d ":" -f2)
        email=$(echo $n | cut -d ":" -f3)
        echo "Name: $name  Age: $age  Email: $email"
    done
done
