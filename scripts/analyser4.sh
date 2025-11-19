#!/bin/bash

min=100; max=-1
min_person=""; max_person=""
for curr_file in $(ls $1)
do
  for n in $(cat $1$curr_file)
  do
    age=$(echo $n | cut -d ":" -f2)
    
    if [ $age -lt $min ]
    then
      min=$age
      min_person=$n
    fi
    
    if [ $age -gt $max ]
    then
      max=$age
      min_person=$n
    fi
    
  done
done

name_min=$(echo $min_person | cut -d ":" -f1)
age_min=$(echo $min_person | cut -d ":" -f2)
email_min=$(echo $min_person | cut -d ":" -f3)

name_max=$(echo $max_person | cut -d ":" -f1)
age_max=$(echo $max_person | cut -d ":" -f2)
email_max=$(echo $max_person | cut -d ":" -f3)

echo $name_min $age_min $email_min
echo $name_max $age_max $email_max
