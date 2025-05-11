#!/bin/bash

if [ $# -eq 0 ];then
	echo "Bad boy"
	exit 1
fi

for i in $@;do
	if [ -e $i -a -r $i ];then
		num=$(ls -a $i | wc -w)
		if [ $num -le 3 ]; then
			rm -r $i
			echo "Removed $i"
		fi
	fi
done
