#!/bin/bash
echo "Enter the string"
read str
len=`echo $str | wc -c`
echo $len
while [ $len -ne 0 ]
do
temp=`echo $str | cut -c$len`
        result=$result$temp
len=`expr $len - 1`
done
echo $result
if [ $result = $str ]
then
echo "given string s a palindrome"
else
echo "given string s not a palindrome"
