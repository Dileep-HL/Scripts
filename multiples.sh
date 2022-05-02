#!/bin/bash
echo "Enter the tables of ur choice"
read tables
var=1
while [ $var -le 10 ]
do 
	output=`expr $tables \* $var`
	echo $tables x $var=$output
	var=`expr $var + 1`
done
