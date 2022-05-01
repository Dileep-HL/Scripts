#!/bin/bash

echo "Enter the name of a file, link or folder"
read a

if [ -L $a ]
then
	echo " $a s a link"
elif [ -f $a ]
then
	echo "$a s a file"
elif [ -d $a ]
then 
	echo "$a s a directory"
else
	echo "doesn't exists"
fi

