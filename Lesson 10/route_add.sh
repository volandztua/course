#!/bin/bash

ip1='212.100.54.64/26'
ip2='212.100.54.128/26'
ip3='212.100.54.192/26'
gate='enp0s3'

if [ -z `ip route | awk '/212.100.54.64\/26/{print $1}'` ]
then
        `ip route add $ip1 dev $gate`
elif [ -n `ip route | awk '/212.100.54.64\/26/{print $1}'` ]
then
	echo "route $ip1 already exist"
fi
if [ -z `ip route | awk '/212.100.54.128\/26/{print $1}'` ]
then
        `ip route add $ip2 dev $gate`
elif [ `ip route | awk '/212.100.54.128\/26/{print $1}'` == $ip2 ] #  и так и так хотелось попробовать :)
then
        echo "route $ip2 already exist"
fi
if [ -z `ip route | awk '/212.100.54.192\/26/{print $1}'` ]
then
        `ip route add $ip3 dev $gate`
elif [ -n `ip route | awk '/212.100.54.192\/26/{print $1}'` ]
then
        echo "route $ip3 already exist"
fi

