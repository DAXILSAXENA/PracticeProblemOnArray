#! /bin/bash -x

# Getting 10 random 3 Digit numbers

for (( i=0; i<10; i++ ))

do
num=$(( RANDOM%900 + 100 ))
numbers[((i))]=$num
done

echo ${numbers[@]}

# Sorting using bubblesort

for ((i = 0; i<10; i++))
do

    for((j = 0; j<10-i-1; j++))
    do

        if [ ${numbers[j]} -gt ${numbers[$((j+1))]} ]
        then
            temp=${numbers[j]}
            numbers[$j]=${numbers[$((j+1))]}
            numbers[$((j+1))]=$temp
        fi
    done
done

# Display sorted array

echo Sorted array:${numbers[*]}

echo "second smallest number is:" ${numbers[1]}
echo "second largest number is:" ${numbers[8]}x
