#!/bin/bash
path=0
count=1
for a in $(ls -SrR);do
	for b in $a;do
		if [ -z $(echo $b | cut -d '.' -f1) ];then
			path=$(echo $b | cut -d ':' -f1)
			if [ -r $path ];then
				count=0
				#num=$(ls -a $path | wc -l)
			fi
		elif [ $count -eq 0 ];then
			if [ -r "$path/$b" ];then
				echo "$parh/$b -> $(wc -l < "$path/$b")"
			fi
			count=1
		fi
	done
done
