#!/bin/bash
let total=0
read=$(cat numbers.txt)
for i in $read;do
	let total=$total+$i
	if [ $i -gt $1 ];then
		echo $i
	fi
	#if (( $i%2 == 0 ));then
	if [ $(($i%2)) -eq 0 ];then
		echo "Even: $i"
	fi
done
echo "The sum of numbers.txt is: $total"
echo "The avarage of numbers.txt is: $(($total/$(wc -l < numbers.txt)))"
