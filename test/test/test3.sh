#!/bin/bash

for i in $(ls -a ./);do
	if [ -f $i -a $(echo $i | cut -d '.' -f1 | wc -m) -lt 6 ];then
		echo $i
	fi
done
