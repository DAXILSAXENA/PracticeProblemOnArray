#! /bin/bash -x

read -p "Enter number of elements:" n

for (( i=0; i<n; i++ ))
do
        read -p "Enter element:" element
        array[((i))]=$element
done

echo [ ${array[*]} ]

    for (( i=0; i<n-2; i++ ))
    do
        for (( j=i+1; j<n-1; j++ ))
        do
            for (( k=j+1; k<n; k++ ))
            do
                if [ $(( ${array[i]} + ${array[j]} + ${array[k]} )) -eq 0 ]
                then
                    echo "(" ${array[i]} ${array[j]} ${array[k]} ")" adds to zero
                fi
done
done
done
