#!/bin/bash

let i=0
echo "while ((\$i<10));do"
while (($i<10));do
	echo "$i"
	((i++))
done

echo "for (( a=0; a<10; a++ m));do"
for (( a=0; a<10; a++ ));do
	echo "$a"
done

echo "for a in {1..10};do"
for a in {1..10};do
	echo $a
done
