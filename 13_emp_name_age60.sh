#!/bin/bash
echo "Enter the file name"
read name
n=1
while read line
do
	if [ $n -gt 1 ]
	then
		age=`echo "$line" | awk '{print $NF}'`
		if [ $age -gt 60 ]
		then
			echo "$line" | awk '{print $1}'
		fi
	fi
	n=`expr $n + 1`
done < $name
