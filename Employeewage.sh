#!/bin/bash -x
#constant variables.
isPresent=1;
isPartTime=1;
isFullTime=2;
empRatePerHr=10;
numOfDaysWorking=28;

#To displaying welcome to employee.
echo "welcome employees ";

#To check wheather the employee is present or abscent.

attendence=$(($RANDOM%2+1))
if (($isPresent==$attendence))
then
	echo "Employee is present";
else
	echo "Employee is abscent";
fi
#To calculate daily empolyee wage and also for part time employee.

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
#variables.
totalSalary=0;

for((day=1;day<=$numOfDaysWorking;day++))
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

#Calculating wages till number of woring days or total working hours per month is reached.
#variables.
totalEmpHr=0;
totalWorkingDays=0
maxHrInMonth=10

while(( (($totalEmpHr < $maxHrInMonth)) && (($totalWorkingDays < $numOfDaysWorking)) ))
do 
	((totalWorkingDays++))
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
	totalEmpHr=$(($totalEmpHr+$empWorkHr))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
echo "The total salary is $totalSalary";

#Calculating wages till number of woring days or total working hours per month is reached.
#variables.
totalEmpHr=0;
totalWorkingDays=0
maxHrInMonth=10
function getWorkingHr(){
	case $1 in
			1)
				empWorkHr=2;
				;;
			2)
				empWorkHr=5;
				;;
			*)
				empWorkHr=0;
	esac
}
function calDailyWage(){
	local empworkHr=$1;
	wage=$(($empWorkHr*$empRatePerHr))
	echo $wage;
}
while(( (($totalEmpHr < $maxHrInMonth)) && (($totalWorkingDays < $numOfDaysWorking)) ))
do 
   ((totalWorkingDays++))
	empWorkHr="$(( $getWorkingHr $(($RANDOM%3)) ))"
	totalEmpHr=$(($totalEmpHr+$empWorkHr))
	empWage[$totalWorkingDays]="$(( $calDailyWage $empWorkHr))"
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
echo "Daily Wage" ${empWage[@]};

