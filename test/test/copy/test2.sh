#!/bin/bash
let count=0
while read -r line;do
	if [ -e $line ];then
		if [ -f $line -a ! -d $line ];then
			echo "File: "
			sort $line | uniq
		elif [ -d $line ];then
			full=$(ls -a $line)
			for i in $full;do
				if [ -h "$line/$i" ];then
					echo "Soft: $i"
				else
					echo "Something else: $i"
				fi
			done
		fi
	fi
done < paths.txt
