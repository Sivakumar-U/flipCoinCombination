#!/bin/bash -x

declare -A dictionary

dictionary[HHH]=0
dictionary[HHT]=0
dictionary[HTH]=0
dictionary[THH]=0
dictionary[HTT]=0
dictionary[THT]=0
dictionary[TTH]=0
dictionary[TTT]=0


for (( i=0; i<10; i++ ))
do
	randomCheck1=$((RANDOM%2))
	randomCheck2=$((RANDOM%2))
	randomCheck3=$((RANDOM%2))
	case $randomCheck1$randomCheck2$randomCheck3 in
		111)
			((dictionary[HHH]++))
		;;
		110)
			((dictionary[HHT]++))
		;;
		101)
			((dictionary[HTH]++))
		;;
		011)
			((dictionary[THH]++))
       		;;
		100)
                        ((dictionary[HTT]++))
                ;;
                010)
                        ((dictionary[THT]++))
                ;;
                001)
                        ((dictionary[TTH]++))
                ;;
                000)
                        ((dictionary[TTT]++))

	esac
done

echo "Triplet percentage of HHH: $((${dictionary[HHH]}*100/10)) percent"
echo "Triplet percentage of HHT: $((${dictionary[HHT]}*100/10)) percent"
echo "Triplet percentage of HTH: $((${dictionary[HTH]}*100/10)) percent"
echo "Triplet percentage of THH: $((${dictionary[THH]}*100/10)) percent"
echo "Triplet percentage of HTT: $((${dictionary[HTT]}*100/10)) percent"
echo "Triplet percentage of THT: $((${dictionary[THT]}*100/10)) percent"
echo "Triplet percentage of TTH: $((${dictionary[TTH]}*100/10)) percent"
echo "Triplet percentage of TTT: $((${dictionary[TTT]}*100/10)) percent"
