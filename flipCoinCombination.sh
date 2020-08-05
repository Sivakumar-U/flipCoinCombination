#!/bin/bash -x

isHeads=1
randomCheck=$((RANDOM%2))

if [ $randomCheck -eq $isHeads ]
then
	echo "Heads"
else
	echo "Tails"
fi
