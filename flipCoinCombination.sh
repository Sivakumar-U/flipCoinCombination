#!/bin/bash -x

declare -A dictionary

dictionary[Heads]=0
dictionary[Tails]=0
isHeads=1

for (( i=0; i<10; i++ ))
do
	randomCheck=$((RANDOM%2))

	if [ $randomCheck -eq $isHeads ]
	then
		((dictionary[Heads]++))
	else
		((dictionary[Tails]++))
	fi
done

echo "Heads percentage: $((${dictionary[Heads]}*100/10)) percent"
echo "Tails percentage: $((${dictionary[Tails]}*100/10)) percent"
