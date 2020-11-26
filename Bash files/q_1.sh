#!/bin/bash
a=( "$@" )
n=${#a[@]}
df -k --output=source,pcent | sed 1d | grep -v tmpfs | cut -d "%" -f 1 > 1.txt
cut --complement -d " " -f 1 1.txt > 2.txt
i=0
while IFS= read -r line
do
b[$i]=$line
((i++))
done < 2.txt

df -k --output=source | sed 1d | grep -v tmpfs | cut -d "%" -f 1 > 1.txt

: '
for((i=0;i<n;i++))
do 
echo ${a[i]}
done
'

i=0
while IFS= read -r line # || [[ -n "$line" ]];
do
#echo $line
if [[ ${b[i]} -lt ${a[0]} ]];
then
tput setaf 4; echo "OK, $line, ${b[i]}%"
elif [[ ${b[i]} -gt ${a[1]} ]];
then
tput setaf 1; echo "CRITICAL, $line, ${b[i]}%"
else
tput setaf 3; echo "WARNING, $line, ${b[i]}%" 
fi
((i++))
done < 1.txt

rm 1.txt 2.txt

