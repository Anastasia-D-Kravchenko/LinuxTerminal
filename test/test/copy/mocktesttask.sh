#!/bin/bash
if [ $# -ne 1 ];then
	echo "Get lost"
	exit 1
fi
path=$1
if [ -r $path ]; then
	head -8 $path | tail -4
else
	echo "U are loser and don't have ringhts. Are u a boy?"
fi
