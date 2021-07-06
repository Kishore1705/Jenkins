#!/bin/bash
ls > 5.txt
numberoffiles=0
numberofdirectories=0
numberoflinks=0
while read  line
do
	if [ -d $line ];then
		numberofdirectories=`expr $numberofdirectories + 1`
	elif [ -f $line ];then
		numberoffiles=`expr $numberoffiles + 1`
	else [ -l $line]
		numberoflinks=`expr $numberoflinks + 1`
	fi
	done < 5.txt
	echo "Number of file= $numberoffiles"
	echo "Number of directories= $numberofdirectories"
	echo "Numberof links=$numberoflinks"
