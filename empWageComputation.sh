#!/bin/bash -x
#cheking the employee is for part time and calculating  the salary 
is_Part_Time=0
is_Full_Time=1
employeeCheck=$(( RANDOM%2 ))
empWagePerHours=20
monthlyWorkingDay=20
#checking the employee is for full time or half time
case $employeeCheck in
	$is_Part_Time)
	empHours=4
	;;
	$is_Full_Time)
		empHours=8
	;;
esac
#calculating the total salary of the employee
salary=$(( $empWagePerHours*$empHours*monthlyWorkingDay ))
echo "salary of the month is:$salary"
