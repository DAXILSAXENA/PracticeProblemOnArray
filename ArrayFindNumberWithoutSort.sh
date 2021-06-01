#! /bin/bash -x

# Getting 10 random 3 Digit Numbers
for (( i=0; i<10; i++ ))

do
num=$(( RANDOM%900 + 100 ))
numbers[((i))]=$num

done

echo ${numbers[@]}

# Getting Second largest number without sorting
max=${numbers[0]}
for (( i=0; i<10; i++ ))

do
        if [ ${numbers[i]} -gt $max ]
        then
        max=${numbers[i]}
        fi
done

declare -a numb
numb=(${numbers[@]//$max/0})
max=${numb[0]}

for (( i=0; i<10; i++ ))

do
        if [ ${numb[i]} -gt $max ]
        then
        max=${numb[i]}
        fi
done

echo Second maximum number is $max



# Getting Second smallest number without sorting
min=${numbers[0]}
for (( i=0; i<10; i++ ))

do
        if [ ${numbers[i]} -lt $min ]
        then
        min=${numbers[i]}
        fi
done

declare -a numbs
numbs=(${numbers[@]//$min/1000})

min=${numbs[0]}

for (( i=0; i<10; i++ ))

do
        if [ ${numbs[i]} -lt $min ]
        then
        min=${numbs[i]}
        fi
done

echo Second minimum number is $min
