#!/bin/bash
n="$@"
#echo $n
i=1;
ping -c $n google.com |
while IFS= read -r line
do
if [[ $line = 64* ]]
then
echo "$i. $line"
((i+=1))
else
echo "$line"
fi
done
