#!/bin/bash
echo "Press 1 if you want find the factorial"
echo "Press 2 to find the disk usage"
echo "Press 3 to finf disk usage of /home/ubuntu"
read i

case $i in

1)
	echo "enter the number you want to find the factorial of"
	read n
	result=1
	while [ $n -gt 0 ];do
		result=`expr $result \* $n`
		n=`expr $n - 1`
	done
	echo "$result"
	;;
2)     
	df -h
	;;
3)	
	du -sh /home/ubuntu
	;;
esac
