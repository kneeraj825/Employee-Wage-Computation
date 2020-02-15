#!/bin/bash -x

#CONSTANTS 
IS_PART_TIME=1
IS_FULL_TIME=2
MAXIMUMWORKINGHOURS=100
EMPWAGEPERHOURS=20
MAXIMUMWORKINGDAYS=20
#VARIABLES
workingDays=0
workingHours=0
while (( $workingDays < $MAXIMUMWORKINGDAYS && $workingHours < $MAXIMUMWORKINGHOURS ))
do
	((workingDays++))
	employeeCheck=$((RANDOM%3))
#checking the employee is for full time or part time
	case $employeeCheck in
		$IS_PART_TIME)
			empHours=4
		;;
		$IS_FULL_TIME)
			empHours=8
		;;
		*)
			empHours=0
		;;
	esac
#total working hourscalculating
		workingHours=$(( $workingHours+$empHours ))
done
#calculating the total salary of the employee
salary=$(( $EMPWAGEPERHOURS*$workingHours ))
echo "salary of the month is:$salary"
