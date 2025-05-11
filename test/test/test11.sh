#!/bin/bash

if [ $# -ne 2 ];then
	echo "Bad boy"
	exit 1
fi

if [ -e $1 -a -f $1 ];then
	echo "$(head -9 $1 | tail -5 | sort | uniq)" > $2
fi
cat $2
