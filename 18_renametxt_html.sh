#!/bin/bash
ls | grep '.txt$' > textfile
while read line
do
	var=`echo "$line" | awk -F "." '{print $1}'`
	mv $var.txt $var.html
done < textfile


