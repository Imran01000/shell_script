#!/bin/bash -x
#To displaying welcome to employee.
echo "welcome employees ";

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
#To calculate daily empolyee wage and also for part time employee.
#variables.

isPartTime=1;
isFullTime=2;
empRatePerHr=10;
attendence=$(($RANDOM%3))
if (($isFullTime==$attendence))
then
	empWorkHr=5;
elif (($isPartTime==$attendence))
then
	empWorkHr=2;
else
	empWorkHr=0;
fi
salary=$(($empRatePerHr*$empWorkHr));
echo "The salary for employee is $salary";

#Solving using case statement.
#variables

isPartTime=1;
isFullTime=2;
empRatePerHr=10;
attendence=$(($RANDOM%3))
case $attendence in 
	1)
   	empWorkHr=2;
		salary=$(($empRatePerHr*$empWorkHr));
		echo "The salary for part timr employee is $salary";
		;;
 
	2)
      empWorkHr=5;
      salary=$(($empRatePerHr*$empWorkHr));
		echo "The salary for full time employee is $salary";
		;;
	*)
   	empWorkHr=0;
		echo "Employee is abscent";
esac

#Calculating wages for a month.
#variables
isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=10;
numofdaysworking=28;
for((day=1;day<=$numofdaysworking;day++))
do 
	attendence=$(($RANDOM%3));
		case $attendence in
			1)
				empWorkHr=2;
				;;
			2)
				empWorkHr=5;
				;;
			*)
				empWorkHr=0;
				;;
		esac
	salary=$(($empWorkHr*$empRatePerHr));
	totalSalary=$(($totalSalary+$salary));
done
echo "The total salary for an employees are $totalSalary";
