#!/bin/bash
echo "enter the number you want to find the factorial of"
read n
result=1
while [ $n -gt 0 ];do
	result=`expr $result \* $n`
	n=`expr $n - 1`
done
echo "$result"
