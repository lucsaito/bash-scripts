#!/bin/bash
# This script will modify your phrase,
# it will print the phrase: capitalized,
# in uppercase and in lowercase.

echo "Type a phrase, I will change it for you:"
read PHRASE
sleep 1

echo 'To change the phrase to uppercase you use ${var^^}'
sleep 2
echo "The output will be: ${PHRASE^^}"
sleep 1

echo 'To change the phrase to lowercase you use ${var,,}'
sleep 2
echo "The output will be: ${PHRASE,,}"
sleep 1

echo 'To capitalize the phrase you use ${var^}'
sleep 2
echo "The output will be: ${PHRASE^}"
sleep 1

exit 0
