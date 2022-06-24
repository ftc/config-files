#!/bin/bash
#
while true;
do
	echo $(date '+%s') >> $1 #log time to file
	echo $(ps aux | sort -nrk 3,3 | head -n 5 |sed 's/\n/;;/') >> $1 #log top 5 cpu using programs to file
	sleep 900 #sleep 15 minutes
done

