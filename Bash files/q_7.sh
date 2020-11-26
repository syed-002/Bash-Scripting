#!/bin/bash
echo "Enter name:"
read name
echo "Enter DOB:"
read dob	
echo $dob >a.txt
m=$(cut -d '-' -f 1 a.txt)	#-f is field name
y=$(cut -d '-' -f 2 a.txt)
if [ $m -eq 1 ];
then
((nn=2020-y))
((nnn=$nn*12))
else
((n=13-$m))
((y=$y+1))
((nn=2020-$y))
((nn=$nn*12))
((nnn=$nn+$n))
fi
#echo $nnn
echo "Hello $name your age is $nnn months."
