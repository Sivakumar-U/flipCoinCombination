#!/bin/bash -x

declare -A dictionary

dictionary[HH]=0
dictionary[HT]=0
dictionary[TH]=0
dictionary[TT]=0

for (( i=0; i<10; i++ ))
do
	randomCheck1=$((RANDOM%2))
	randomCheck2=$((RANDOM%2))
	case $randomCheck1$randomCheck2 in
		11)
			((dictionary[HH]++))
		;;
		10)
			((dictionary[HT]++))
		;;
		01)
			((dictionary[TH]++))
		;;
		00)
			((dictionary[TT]++))
		;;
	esac
done

echo "Double heads percentage: $((${dictionary[HH]}*100/10)) percent"
echo "Single head and tail percentage: $((${dictionary[HT]}*100/10)) percent"
echo "Single tail and head percentage: $((${dictionary[TH]}*100/10)) percent"
echo "Double Tails percentage: $((${dictionary[TT]}*100/10)) percent"
