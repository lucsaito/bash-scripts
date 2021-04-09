#!/bin/bash
# Lucas Saito, 2021/04/09
# Given a file by command line argument,
# the script will read its content line-by-line

if [[ $# -eq 0 ]]; then
	echo "No file was inputted"
	exit 0
else
	echo "Reading file: $1"
	while read line; do
		echo $line
	done < $1
fi
exit 0
