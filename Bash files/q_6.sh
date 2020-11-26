#!/bin/bash
echo "Enter A:" 
read A
echo "Enter B:"
read B	
pro=$((A*B))
while [ $A -ne 0 ]
do
C=$((B%A))
B=$A
if [ $C -eq 0 ]
then
echo "GCD: $A"
break
else
A=$C
fi
done
lcm=$((pro/A))
echo "LCM: $lcm"



