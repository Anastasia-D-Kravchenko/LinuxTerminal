#!/bin/bash

if [ $# -eq 0 ];then
	echo "Bad boy"
	exit 1
fi

for i in $(cat $1);do
	case "$i" in
		"A")
			echo "B";;
		"B")
			echo "A";;
		*)
			echo "A, B";;
	esac
done
