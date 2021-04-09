#!/bin/bash
# Lucas Saito, 2021/04/09
# Usage: bash read-files.sh file1 file2 file3 ...
#
# Given "n" arguments(files), the script reads
# each file's content line-by-line.


if [[ $# -eq 0 ]]; then
	echo "[read-lines]: No arguments were given"
	exit 0
else
	counter=1
	for file in $@; do
		echo "[read-lines]: Reading file [$counter/$#]: $file"
		while read line; do

			echo $line
		done < $file
		counter=$((counter+1))
	done
fi
exit 0
