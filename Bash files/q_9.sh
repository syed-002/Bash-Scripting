#!/bin/bash
n="$@"
val=(900 500 400 100 90 50 40 10 9 5 4 1)
rom=("CM" "D" "CD" "C" "XC" "L" "XL" "X" "IX" "V" "IV" "I")
str=""
i=0
while [ $n -ne 0 ]
do
c=$((n/val[$i]))	
#echo $c
n=$((n%val[$i]))
#echo $n
for((j=0; j<c; j++))
do
str+=${rom[i]}
#echo $str
done
((i=$i+1))
done
echo -n $str
