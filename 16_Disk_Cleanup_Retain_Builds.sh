#!/bin/bash
ls -ltr | awk '(NR>1) {print $NF}' > rmfile
count=`cat -n rmfile | wc -l`
count=`expr $count - 5`
head -$count rmfile | xargs rm -rf
