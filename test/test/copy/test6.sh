#!/bin/bash

if [ $# -eq 0 ];then
	echo "Bad boy"
	exit 1
fi

linem=""
max=0
while read -r line;do
	temp=$(echo $line | wc -m)
	if [ $temp -gt $max ];then
		max=$temp
		linem=$line
	fi
done < $1
echo "The longest line($max): $linem"
