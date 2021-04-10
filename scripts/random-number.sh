#!/bin/bash
# Generates a random number from 1 to 1000

random_number=$(( $RANDOM % 1000 + 1 ))
echo "Your random number from 1 to 1000 is:"
echo $random_number
