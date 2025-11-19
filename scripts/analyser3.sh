#!/bin/bash

for curr_file in $(ls $1)
do  
  for n in $(cat $1$curr_file)
  do
    age=$(echo $n | cut -d ":" -f2)
    
    if [ $age -ge 18 ]
    then
      adult=$((adult+1))
    else
      child=$((child+1))
    fi
  done
done

echo "Совершеннолетних: $adult; Несовершеннолетних: $child"
