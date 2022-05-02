#!/bin/bash
read num
count=0
temp=$num
inc=0
while [ $temp -ne 0 ]
do
	while [ $num -ne 1 ]
	do
		echo -n " "
		count=`expr $count + 1`
		num=`expr $num - 1`
	done
	count=`expr $temp - $count`
	count=`expr $count + $inc`
	while [ $count -ne 0 ]
	do
		echo -n "*"
		count=`expr $count - 1`
	done
	temp=`expr $temp - 1`
	count=0
	num=$temp
	inc=`expr $inc + 2`
	echo
done
