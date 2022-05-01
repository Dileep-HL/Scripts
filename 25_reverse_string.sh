#!/bin/bash
echo "enter a string"
read str
count=`echo $str | wc -c`
while [ $count -gt 0 ]
do
	char=`echo "$str" | cut -c$count`
	rev=$rev$char
	count=`expr $count - 1`
done
echo "the reverse string s $rev"
