#!/bin/bash
 
echo "In your basket you have these fruits: "
basket=$(cut -d ',' -f1 text.txt)
for i in $basket;do
	echo $i

done
echo "Gimme color to give you your fruit match: "
color=""
read color
while IFS=',' read -r name num ocolor type;do
	if [ $ocolor = $color ];then
		echo "$name, $num, $ocolor, $type"
	fi
done < text.txt
total=$(wc -l < text.txt)
echo "Total quantity of fruits in your basket: $total fruits"
sweet=$(grep "sweet" text.txt | cut -d ',' -f2)
rm  quantity.txt
for i in $sweet;do
	echo $i >> quantity.txt
done
max=$(sort quantity.txt | head -1)
max=$(grep $max text.txt)
echo "$max"
#fruit_list=$(cut -d ',' -f1 text.txt | sort | uniq)
#count=$(echo $fruit_list | wc -w)
#echo "There are $count unique fruits: $fruit_list"
count=0
names=""
fruit=$(cut -d ',' -f1 text.txt)
rm names.t
for i in $fruit; do
  echo "$i" >> names.t
done
exist=0
while read -r name; do
  for j in $names; do
    if [ "$j" = "$name" ]; then
      exist=1
    fi
  done
  if [ "$exist" -eq 0 ]; then
    names="$names $name"
    ((count++))
  fi
  exist=0
done < names.t
echo "There're $count of fruits: $names"
