#!/bin/bash

first_name=$(cut -d ' ' -f1 names.txt)
if [ -e surnames.txt ];then
	rm surnames.txt
fi
for a in $first_name;do
	echo "$(grep $a names.txt | cut -d ' ' -f2), $a" >> surnames.txt
	echo "$(echo $a | tr [:lower:] [:upper:])"
done
let count=$(cut -d ' ' -f1 names.txt | egrep 'a|A' | wc -w)+$(cut -d ' ' -f2 names.txt | egrep 'a|A' | wc -w)
echo "There are --$count-- of names that contain lettar \"a\""
#echo "$(cut -d ' ' -f1 names.txt | cut -c1 | tr [:lower:] [:upper:])$(cut -d ' ' -f1 names.txt | cut -c2-) "
cut -d ',' -f2 surnames.txt | sort | while read -r line;do
	echo "$(grep $line surnames.txt)"
done
