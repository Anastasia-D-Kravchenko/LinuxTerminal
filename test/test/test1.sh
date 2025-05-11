#!/bin/bash

if [ ! $# -gt 0 ]; then
	echo "Bad boy"
	exit -1
fi
if [ -d $1 -a -e $1 -a -w $1 ];then
	rmdir $1 2>> error.log
else
	echo "The $1 does not exist"
fi
