#!/bin/bash
echo "enter the array elements to find the factorial"
read array
for i in $array
do
	num=$i
	fact=1
	while [ $num -gt 0 ]
	do
		fact=`expr $num \* $fact`
		num=`expr $num - 1`
	done
	echo "the factorial of $i s $fact"
done
