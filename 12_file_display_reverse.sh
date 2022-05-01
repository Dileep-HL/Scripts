#!/bin/bash
echo "Enter a file name"
read name
count=`cat -n $name | wc -l`
echo "the total no of lines in a file s $count"
while [ $count -gt 0 ]
do
output=`head -$count $name | tail -1`
echo "$output"
count=`expr $count - 1`
done < $name 
