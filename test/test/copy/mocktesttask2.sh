#!/bin/bash

if [ $# -ne 1 -o ! -d $1 ];then
	echo "Bad boy"
	exit -1
fi
count=0
for i in $(ls -a $1);do
	if [ -f $i ];then
		#while read -r line;do
		#	((count++))
		#done < $i
		let count=$count+$(wc -l < $i)
	fi
done
echo "The sum is: $count"
