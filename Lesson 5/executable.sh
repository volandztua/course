#!/bin/bash

for file in `find /usr -type f -executable`  
do
			echo $file >> executable.txt
done
echo 'executable files are in executable.txt'

