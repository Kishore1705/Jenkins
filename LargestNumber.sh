#!/bin/bash
biggest=0
for i in $@
do
	if [ $i -gt $biggest ]; then
		biggest=$i
	fi
done
echo "Biggest=$biggest"
