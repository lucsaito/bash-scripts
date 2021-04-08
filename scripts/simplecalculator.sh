#!/bin/bash
# Lucas Saito, 2020/04/04
# This is a basic calculator.
# It can perform addition, subtraction, multiplication
# and division of two number inputted by the user.


TOPBAR="|**********************************|"
BOTBAR="************************************"
EMPTYBAR="|                                  |"

function print_head {
	printf "$TOPBAR\n"
	printf "|   Welcome to Simple Calculator   |\n"
	printf "$BOTBAR\n"
		
	printf "| Type the number of the operation:|\n"
	printf "| 1- Sum                           |\n"
	printf "| 2- Subtraction                   |\n"
	printf "| 3- Multiplication                |\n"
	printf "| 4- Division                      |\n"
 
	printf "$EMPTYBAR\n"
	printf "$BOTBAR\n"
}

print_head
condition=0
while [[ $condition -eq 0 ]]
do
	read operation
	case $operation in
		1)
		printf "Sum selected.\nType the first number:\n"
		read x
		printf "Sum selected.\nType the second number:\n"
		read y
		printf "$x + $y = "
		echo "scale=3; $x + $y" | bc
		condition=1;;
		2)
		printf "Subtraction selected.\nType the first number:\n"
		read x
		printf "Subtraction selected.\nType the first number:\n"
		read y
		printf "$x - $y = "
		echo "scale=3; $x - $y" | bc
		condition=1;;
		3)
		printf "Multiplication selected.\nType the first number:\n"
		read x
		printf "Multiplication selected.\nType the first number:\n"
		read y
		printf "$x * $y = "
		echo "scale=3; $x * $y" | bc
		condition=1;;
		4)
		printf "Division selected.\nType the first number:\n"
		read x
		printf "Division selected.\nType the first number:\n"
		read y
		printf "$x / $y = "
		echo "scale=3; $x / $y" | bc
		condition=1;;
	*)
	print_head
	echo "Invalid option, try again"
	esac
done
