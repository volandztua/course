#!/bin/bash

ls -lS /var/log | grep "^-" |awk '{print $9, $5}' > sort.txt

