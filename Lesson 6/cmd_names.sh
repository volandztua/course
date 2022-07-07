#!/bin/bash

exec 0<usr_executables.txt
for var in 0
do
	echo "Total `wc -l` files"
done
exec 0<usr_executables.txt
for var in 0
do
	echo -e "`head -n10 | cut -d '/' -f 4`\n" > cmd_names.txt
done

