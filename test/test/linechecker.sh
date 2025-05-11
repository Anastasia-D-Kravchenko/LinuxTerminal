#!/bin/bash
if [ $# -ne 1 ]
then
        echo "Wrong number of args"
        exit 1
fi

for i in *.txt
do
	lines=$(head -n 5 $i | tail -n 3 | sort | uniq)
	n=$(wc -l < $1)
	echo "$lines" | while read -r line
	do
		echo "$n $line" >> $1
                ((n+=1))
	done
done
echo $n
