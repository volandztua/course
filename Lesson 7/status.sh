#!/bin/bash

PID=`systemctl status apache2.service | grep PID |awk '{print $3}'`
stat=`systemctl status apache2| grep Active | awk '{print $2}'`

if [ $stat == "inactive" ] || [ -z $PID ];
then
       echo "Build FAILED"
else
       echo "Build OK"
fi

