#!/bin/bash

for i in $(ls -aS | tail -5);do
	if [ -f $i ];then
		echo "File: $i"
	elif [ -d $1 ];then
		echo "Dir: $i"
	fi
done


