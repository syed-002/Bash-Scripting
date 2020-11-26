#!/bin/bash
a=( "$@" )
n=${#a[@]}
for (( i=0; i<n; i++))
do 
for (( j=0; j<n; j++))
do 
if [ ${a[i]} -lt ${a[j]} ]; 
then
temp=${a[$i]}
a[$i]=${a[$j]}
a[$j]=$temp
fi
done
done
for(( i=0; i<n; i++))
do
	echo -n "${a[i]} "
done
