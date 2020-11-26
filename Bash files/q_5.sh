#!/bin/bash
echo "Please enter your SGPA:"
read sg
if [[ "`echo \"if (${sg} < 5) 1\" | bc`" -eq 1 ]];
then
echo "PROBATION"
fi
x=`echo 16-$sg | bc`
#echo $x
if [[ "`echo \"if (${x} > 10) 1\" | bc`" -eq 1 ]];
then
echo "AGLE SEM PHOD DENGE"
else
echo "You need SGPA $x next sem"
fi
