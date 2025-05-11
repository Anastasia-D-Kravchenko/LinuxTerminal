#!/bin/bash

if [ $# -lt 1 ];then
	echo "Bad boy"
	exit -1
fi

older=0
newer=0
for i in $(ls -a ./);do
	if [ $1 -nt $i ];then
		echo "Newer then: $i"
		((newer++))
	elif [ $1 -ot $i ];then
		echo "Older then: $i"
		((older++))
	fi
done
echo "File $1 is newer then $newer files and older than $older files"
