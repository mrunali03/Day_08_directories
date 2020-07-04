#!/bin/bash
count=1
declare -A birthMonth
while [[ $count -le 50 ]]
do
randomCheck=$(( RANDOM%12 + 1 ))
birthMonth[$randomCheck]=$((${birthMonth[$randomCheck]}+1))
((count++))
done

for((i=1;i<=12;i++))
do
echo "Month $i : ${birthMonth[$i]}"
done
