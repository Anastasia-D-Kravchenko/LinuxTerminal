#!/bin/bash

for i in $@;do
	count=1
		if [ -f $i ];then
			while read -r line;do
			for w in $line;do
				if [ $w = "main()" -a $count -le 10 ];then
					echo "$count: $i"
				fi
			done
			((count++))
		done < $i
	else
		echo "$i not a reg file"
		fi
done
