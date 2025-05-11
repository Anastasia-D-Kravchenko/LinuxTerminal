#!/bin/bash

for a in $@;do
	for b in $(ls -a);do
		if [ $a = $b ];then
			echo "Same: $a"
			if [ $(wc -l < $a 2> error.log) -lt 10 ];then
				echo "		all good"
			fi
		fi
	done
done
