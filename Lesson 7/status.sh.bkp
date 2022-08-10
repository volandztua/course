#!/bin/bash

PID=`pgrep -u root apache2`
name=`ps -eo comm,user |grep root|grep apache2|awk '{print $1}'`
Q=`ps -ef | grep root | grep apache2 | wc -l`

if [ $Q -gt 0 ];
then
	kill -15 $PID
	echo "Process $name $PID stopped"
fi

