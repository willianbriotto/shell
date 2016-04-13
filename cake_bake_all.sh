#!bin/bash

results=($(bin/cake bake all | grep -o '^[-].*[a-z]$' | grep -o '\b.*\b'))
for i in "${results[@]}"  
do
     echo
     bin/cake bake all $i 
     echo
done
