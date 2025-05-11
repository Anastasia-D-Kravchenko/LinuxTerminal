#!/bin/bash

for i in "$@";do
	if [ -e "$i" -a -r "$i" ];then
		num=$(wc -l < $i)
		if [ "$num" -le 10 ];then
			rm "$i"
		else
			echo "More or less then 10 line:    $i - $num"
		fi
	fi
done
