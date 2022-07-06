#!/bin/bash

for dir in `find /etc/ -type d`
do
	echo $dir >> etc_dir.txt
done

