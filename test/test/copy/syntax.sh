#!/bin/bash

veraible="hi, there"  #  Variable assignment (misspelled).
let num=5         #  Assigns 5 to num.
a=5; b=5           #  Assigns 5 to a and b.
let x=$a+$b       #  x = a + b (using let).
echo $x           #  Prints x (10).
c=1; d=1           #  Assigns 1 to c and d.
x=$c+$d          #  x = c + d (without let).
echo $x           #  Prints x (2).
((c++))           #  Increments c.
echo $c           #  Prints c (2).
let x=$((c+d))   #  x = c + d (let and arithmetic expansion).
echo $x           #  Prints x (3).




bool=true       #  bool = "true".
if [ "$bool" = "true" ];then  #  If bool is "true"...
    echo $veraible;      #  Print veraible.
    echo $num;          #  Print num.
    echo "$(($num+5))"  #  Print num + 5.
fi

if [ 5 -eq 4 ];then      #  If 5 == 4...
    ls              #  List files.
elif [ 5 -ge 5 ];then  #  Else if 5 >= 5...
    wc -l syntax.sh   #  Count lines in syntax.sh.
    wc -l < syntax.sh  #  Count lines (redirected input).
else                #  Otherwise...
    sort syntax.sh   #  Sort lines in syntax.sh.
    sort < syntax.sh  #  Sort lines (redirected input).
fi

for i in "$@";do       #  For each argument...
    echo "$i"       #  Print argument.
done
echo "You gave me $# this  much of variables" #  Print number of arguments.




a="h e l l o w"  #  String with spaces.
b=""             #  Empty string.
for i in $a;do    #  For each word in a...
    echo $i       #  Print word.
    if [ "$i" != "w" ];then  #  If word is not "w"...
        b+="$i"   #  Append word to b.
    fi
done
echo "$b"         #  Print b.

let i=0           #  i = 0 (using let).
str=""           #  Empty string.
while [ "$i" -lt 100 ];do  #  While i < 100...
    str+="$i "    #  Append "i " to str.
    ((i++))       #  Increment i.
done
echo "$str"       #  Print str.




while read -r line;do  #  Read input line by line...
    echo "$line"      #  Print line.
done < "$1"          #  From file $1.

for i in $(cat "$1");do  #  For each word in file $1...
    echo "$i"          #  Print word.
done





