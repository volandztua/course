#!/bin/bash

ip1='212.100.54.64/26'
ip2='212.100.54.128/26'
ip3='212.100.54.192/26'

if [ `ip route | awk '/212.100.54.64\/26/{print $1}'` == $ip1 ]
then
	`ip route delete $ip1`
fi
if [ `ip route | awk '/212.100.54.128\/26/{print $1}'` == $ip2 ]
then
	 `ip route delete $ip2`
fi
if [ `ip route | awk '/212.100.54.192\/26/{print $1}'` == $ip3 ]
then
	`ip route delete $ip3`
fi

