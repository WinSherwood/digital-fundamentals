#!/bin/bash

for curr_file in $(ls $1)
do
    for n in $(cat $curr_file)
    do
        email=$(echo "$n" | cut -d ":" -f3)
        if [[ $email =~ .+@spbstu.ru ]]
        then
            name=$(echo "$n" | cut -d ":" -f1)
            age=$(echo "$n" | cut -d ":./" -f2)
            echo "Имя:$name    Возраст:$age    Email:$email"
        fi
    done
done
