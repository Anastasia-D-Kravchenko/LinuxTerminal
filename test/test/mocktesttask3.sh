#!/bin/bash
if [ ! $# -lt 1 -o ! $# -gt 3 ];then
	echo "$1 $2 $3" >> fish.txt
else
	echo "Captain I do think here's some type of an error"
fi

if [ $1 = "-c" -a $# -eq 2 ];then
	let count=0
	a=$(cut -d ' ' -f3 fish.txt)
       	while read -r line;do
		if [ $line -eq $2 ];then
			let count=$count+1
		fi
	done <<<"$a"
	echo "In $2 year was found: $count"
fi
