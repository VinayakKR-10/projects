#!/bin/bash

#Monitoring free DISK space and send an alert email
#FILESYTEM_UTILIZATION = FU

FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "/dev/root" | awk '{print $5}' | tr -d %)
TO="vinayakakr10@gmail.com"

if [[ $FU -gt 20 ]]
then
	echo "The DISK space is running low - $FU %" | mail -s "Disk space alert!!" $TO 
else
	echo "The Disk space is sufficient"
fi

