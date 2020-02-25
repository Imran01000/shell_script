#!/bin/bash -x
#To check wheather the employee is present or abscent.
#variables.
isPresent=1
attendence=$(($RANDOM%2+1))
if (($isPresent==$attendence))
then
	echo "Employee is present";
else
	echo "Employee is abscent";
fi

