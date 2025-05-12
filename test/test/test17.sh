#!/bin/bash

for i in $@;do
	count=$(sort $i | uniq | wc -l)
	if [ $count -ge 17 ];then
		echo $i
	fi
done
