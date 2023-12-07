#! /bin/bash

read -p "Enter the size of the array: " size

for (( i = 0 ; i<size ; i++ ))
do 
	read -p "Enter the element number $(($i+1)) : " arr[$i] 
	
done
echo "Your array is:  ${arr[@]}"

