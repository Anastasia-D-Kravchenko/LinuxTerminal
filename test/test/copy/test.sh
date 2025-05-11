#!/bin/bash
count=0
while read -r line;do 
	if [ $(echo "$line" | wc -m) -eq 8 ];then
		echo "$line -> $(echo "$line" | wc -m)"
		((count++))
	fi
done <<< $(sort $1 | uniq) #string
echo $count

