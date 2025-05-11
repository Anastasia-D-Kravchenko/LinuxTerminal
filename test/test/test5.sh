#/bin/bash

taking=$(find ./ -user "$1" | cut -d '/' -f2)
nost=""
for i in $taking;do
	if [ $(echo $i | cut -d '.' -f1 | wc -w) -eq 0 ];then
		nost="$nost $i"
	fi
done
nost=$(echo $nost | wc -w)
echo "Here was $nost files that belong to $1"
