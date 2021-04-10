#!/bin/bash
# The script will count(print) from 1 until 100

echo "I'll count to you until 100!"
sleep 0.5
for i in {1..100}; do
	echo "Counting... $i"
	sleep 0.5
done
exit 0
