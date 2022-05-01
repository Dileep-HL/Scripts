#!/bin/bash
#set -x
echo "Enter a value to find the factorial of n"
read n
fact=1
while [ $n -gt 0 ]
do
	fact=`expr $n \* $fact`
       	n=`expr $n - 1`
done
echo "the factorial s $fact"


