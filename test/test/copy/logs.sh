#!/bin/bash
grep "logged" logs.txt | while read -r lines;do
	echo $lines | grep "in" | while read -r line;do
		echo "$line ---1"
	done
	echo $lines | grep "out" | while read -r line;do
		echo "$line ---2"
	done
done
count=$(grep "logged in" logs.txt | wc -l)
echo "Before starting, there --$count-- of user in the system"
logedin=$(grep "logged in" logs.txt | grep $1 | cut -d ' ' -f2)
logedout=$(grep "logged out" logs.txt | grep $1 | cut -d ' ' -f2)
echo "User log time: "
echo "	Logged in: $logedin"
echo "	Logged out: $logedout"
count=0
while read -r line;do
	for i in $line;do
		if [ $i = $1 ];then
			echo "$line" >> "$1.txt"
			((count++))
			break
		elif [ $count -eq 1 ];then
			echo "$line" >> "$1.txt"
		fi
	done
done < logs.txt
#lines=""
rm "n$1.txt"
cat "$1.txt" | uniq | while read -r line;do
	echo $line >> n$1.txt
	#lines="$lines\n$line"
done
rm "$1.txt"
count=$(egrep 'Error|Warning' n$1.txt | wc -l)
echo "$1 user got $count error/warning messages"
path=$(cut -d ' ' -f6 n$1.txt | egrep '/*/')
echo "$1 user accessed this pathes: $path"
echo "$1 user had done before logging out: $(tail -2 n$1.txt | head -1 | cut -d ":" -f4)"
