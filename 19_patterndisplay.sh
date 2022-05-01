#!/bin/bash
echo "enter a pattern"
read name

grep -Rli "$name" * > patternfile
if [ $? -eq 0 ]
then
	cat patternfile
else
	echo "the serached pattern doesnt exits"
fi
