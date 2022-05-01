#!/bin/bash

echo "Enter a file name"
read name
num=1
while read line
do
	count=`echo "$line" | wc -w`
	echo "the total no of words in line $num s $count"
	num=`expr $num + 1`
done < $name
