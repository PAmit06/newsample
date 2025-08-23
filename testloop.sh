#!/bin/bash
for i in 1 2 3 4
do
  echo "Number: $i"
done

for i in {1..5}
do
  echo "iteration: $i"
done

#while loop

count=1
while [ $count -le 5 ]
do
  echo "count: $count"
  ((count++))
done

#untill loop

num=1
until [ $num -ge 5 ]
do
  echo "num: $num"
done
