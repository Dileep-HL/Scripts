#!/bin/bash
size=`df -h . | awk '(NR==2) {print $(NF-1)}' | sed 's/%/ /g'`
if [ $size -gt 20 ]
then
	echo "the memory has reached the threshold"
fi
