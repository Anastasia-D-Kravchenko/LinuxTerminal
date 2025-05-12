#!/bin/bash
count=1
path=""
for a in $(ls -SR);do
	for b in $a;do
		if [ $count -eq 0 ];then
			if [ -r "$path/$b" ];then
				echo "$path/$b"
				((count++))
			fi
		elif [ -z $(echo $b | cut -d '.' -f1) ];then
			path=$(echo $b | cut -d ':' -f1)
			if [ -r $path ];then
				count=0
			fi
		fi
	done
done
