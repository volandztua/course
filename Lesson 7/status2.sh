#!/bin/bash

PID=`systemctl status apache2.service | grep PID |awk '{print $3}'`
name=`systemctl status apache2.service | grep "apache2.service -" | awk '{print $2}'`
stat=`systemctl status apache2| grep Active | awk '{print $2}'`
Q=`ps -p $PID | wc -l`

if [ $stat == "inactive" ] || [ -z $PID ];
then 
	echo "Process $name inactive or missing"
	else
              `sudo systemctl stop apache2.service`
fi	

sleep 10
	
if [ $Q -eq 1 ]
then
		`sudo systemctl start apache2.service`
        	echo "Process $name started"	
		fi

