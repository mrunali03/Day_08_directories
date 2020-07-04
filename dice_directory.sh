#!/bin/bash
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
declare -A DiceNumber
while(($count1<10 && $count2<10 && $count3<10 && $count4<10 && $count5<10 &&
$count6<10))
do
random=$((RANDOM%6+1))
case $random in
1) count1=$((count1+1))
DiceNumber[1]="$count1"

;;
2) count2=$((count2+1))
DiceNumber[2]="$count2"
;;
3) count3=$((count3+1))
DiceNumber[3]="$count3"
;;
4) count4=$((count4+1))
DiceNumber[4]="$count1"
;;
5) count5=$((count5+1))
DiceNumber[5]="$count5"
;;
6) count6=$((count6+1))
DiceNumber[6]="$count6"
;;
esac
done
echo Rolling Dice: "[${DiceNumber[@]}]"
maximum=0

for((i=1; i<=6; i++))
do
if(("${DiceNumber[$i]}">$maximum))
then
maximum="${DiceNumber[$i]}"
fi
done
echo Max number: "$maximum"

minimum=11
for((i=1;i<=6;i++))
do
if(("${DiceNumber[$i]}"<$minimum))
then
minimum="${DiceNumber[$i]}"
fi
done
echo Min number: "$minimum"
