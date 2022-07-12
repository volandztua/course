#!/bin/bash

PID=`pgrep -u root apache2`
name=`ps -eo comm,user |grep root|grep apache2|awk '{print $1}'`
Q=`ps -ef | grep root | grep apache2 | wc -l`

if [ $Q -gt 0 ];
then
	kill -19 $PID
#вот тут у меня случился ступор. отрабатывает вроде нормально, но
#мне кажется, надо было сделать как-то по другому
	for i in {1..3} 
	do
		if [ $PID = `pgrep -u root apache2` ]
		then
			echo "Process $name $PID suspended"
			sleep 10
		fi
	done
fi

