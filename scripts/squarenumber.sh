#!/bin/bash
# This simple function takes an integer
# and squares it 

square () {
	echo "$1 * $1" | bc
}

echo "Type the number to square:"
read x
echo "$x * $x = $(square $x)"

