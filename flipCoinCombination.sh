#!/bin/bash -x

declare -A dictionary
declare -a value_Array
declare -a key_Array

dictionary[H]=0
dictionary[T]=0
dictionary[HH]=0
dictionary[HT]=0
dictionary[TH]=0
dictionary[TT]=0
dictionary[HHH]=0
dictionary[HHT]=0
dictionary[HTH]=0
dictionary[THH]=0
dictionary[HTT]=0
dictionary[THT]=0
dictionary[TTH]=0
dictionary[TTT]=0


for (( i=0; i<20; i++ ))
do
	randomCheck=$((RANDOM%14))
	case $randomCheck in
		0)
			((dictionary[H]++))
		;;
		1)
			((dictionary[T]++))
		;;
		2)
			((dictionary[HH]++))
		;;
		3)
			((dictionary[HT]++))
		;;
		4)
			((dictionary[TH]++))
		;;
		5)
			((dictionary[TT]++))
		;;
		6)
			((dictionary[HHH]++))
		;;
		7)
			((dictionary[HHT]++))
		;;
		8)
			((dictionary[HTH]++))
		;;
		9)
			((dictionary[THH]++))
       		;;
		10)
                        ((dictionary[HTT]++))
                ;;
                11)
                        ((dictionary[THT]++))
                ;;
                12)
                        ((dictionary[TTH]++))
                ;;
                13)
                        ((dictionary[TTT]++))
		;;
	esac
done

i=0
for value in `echo ${dictionary[@]}`
do
	value_Array[$i]=$value
	((i++))
done

i=0
for key in `echo ${!dictionary[@]}`
do
	key_Array[$i]=$key
	((i++))
done

max=0
maxCounter=0
for (( counter=0; counter<14; counter++ ))
do
	if [ ${value_Array[$counter]} -gt $max ]
	then
		max=${value_Array[counter]}
		maxCounter=$counter
	fi
done

echo "Winning combination is: ${key_Array[$maxCounter]} with total no of: ${value_Array[$maxCounter]} times."
