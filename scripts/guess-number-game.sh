#!/bin/bash
# Lucas Saito, 2020/04/08
# Simple game to guess a number from 1 to 100
# The person has 5 tries to guess the number


RANDOM_NUMBER=$(( $RANDOM % 100 + 1 ))
TRIES=5
GUESS=0

echo "Welcome to the guessing game!"
echo "Guess a number from 1 to 100:"

while [[ GUESS -lt  TRIES ]]; do
	read guess_number
	if [[ guess_number -eq RANDOM_NUMBER ]]; then
		echo "You've won! The number was $RANDOM_NUMBER"
		exit 0
	else
		TRIES=$((TRIES - 1))
		echo "You miss! You have ${TRIES} tries left!"
	fi
done
echo "You lost!"
exit 0
