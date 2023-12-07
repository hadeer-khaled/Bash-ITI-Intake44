#! /bin/bash

read -p "Enter the size of the array: " size

sum=0
for (( i = 0 ; i<size ; i++ ))
do 
	read -p "Enter the element number $(($i+1)) : " arr[$i] 
	((sum=$sum+arr[$i]))
	#sum=(($sum+arr[$i])) OR #sum=$((sum+arr[$i])
	
done

average=$(echo "scale=2; $sum / $size" | bc)
echo "The array's average is: $average"

: '
echo "The arrays average is: $(($sum/$size))"
#printf %.2f "The arrays average is: $(($sum/$size))"
echo "$(($sum/$size))" | bc
'

