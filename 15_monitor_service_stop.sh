#!/bin/bash
var=" sshd telnet jenkins "
for i in $var
do
	ps -C $var
	if [ $? -ne 0 ]
	then
		echo "the service $var has stopped"
	fi
done
