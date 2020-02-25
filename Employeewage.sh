#!/bin/bash -x
#To calculate daily empolyee wage.
#variables.
isPresent=1;
attendence=$(($RANDOM%2+1));
if (($isPresent==$attendence))
then
	empRatePerHr=10;
	empWorkHr=2;
	empWage=$(($empRatePerHr*$empWorkHr));
	echo "Employee wage is $empWage";
else
	echo "Employee is abscent";
fi
