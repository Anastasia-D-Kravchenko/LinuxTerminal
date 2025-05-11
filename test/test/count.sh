#!/bin/bash
count=0
while read -r line;do
	((count++))
done <<< $(ls -la)
echo "$count"
