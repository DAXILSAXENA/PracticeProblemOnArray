#! /bin/bash -x

count=0

for (( i=1; i<=100; i++ ))
do

temp=$(( i%10 ))
temp1=$(( i/10 ))
        if [ $temp -eq $temp1 ]
        then
        numbers[((count++))]=$i
        fi
done

echo ${numbers[*]}
