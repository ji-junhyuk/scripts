#!/bin/bash

. library.sh

initializeANSI

echon "First off, do you have echo in your path? (1=yes, 2=no) "
read answer
while ! validint $answer 1 2 ; do
	echon "${boldon}Try again${boldoff}. DO you have echo "
	echon "in your path? (1=yes, 2=no) "
	read answer
done

if ! checkForCmdInPath "echo" ; then
	echo "Nope, cna't find the echo command."
else
	echo "The echo command is in the PATH."
fi
echo ""
echon "Enter a year you think might be a leap year: "
read year

while ! validint $year 1 9999 ; do
	echon "please enter a year in the ${boldon}corret${boldoff} format: "
	read year
done

if isLeapYear $year ; then
	echo "${greenf}You're right! $year is a leap year.${reset}"
else
	echo "${redf}Nope, that's not a leap year.${reset}"
fi

exit 0
