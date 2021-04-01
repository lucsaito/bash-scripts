#!bin/bash
# Lucas Saito, 2020/04/01
# This is just a simple script that I
# created to practice "case" and "function"
# of bash. It tells which day of the week
# today is.

what_day_today () {
	MESSAGE="Today is"
	today=$(date | cut -d " " -f 1)
	case $today in
		Sun|Mon|Fri)
		echo "$MESSAGE ${today}day!";;
		Wed)
		echo "$MESSAGE ${today}nesday!";;
		Tue)
		echo "$MESSAGE ${today}sday!";;
		Thu)
		echo "$MESSAGE ${today}rsday!";;
		Sat)
		echo "$MESSAGE ${today}urday!";;
	*)
	esac
}
what_day_today



# Sun day
# Mon day
# Fri day

# Wed nesday
# Tue sday
# Thu rsday
# Sat urday