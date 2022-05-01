#!/bin/bash
echo "Enter a value of num1"
read num1
echo "Enter the value of num2"
read num2

if [ $num1 -gt $num2 ]
then
	echo "$num1 s greater than $num2"
elif [ $num2 -gt $num1 ]
then
	echo "$num2 s greater than $num1"
else 
	echo "$num1 s equal to $num2"
fi	
