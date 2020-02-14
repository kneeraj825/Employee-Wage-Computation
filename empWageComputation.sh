#!/bin/bash -x

#cheking the employee is for part time and calculating  the salary 
is_Part_Time=0
is_Full_Time=1
employeeCheck=$(( RANDOM%2 ))
empWagePerHours=20

case $employeeCheck in
$is_Full_Time)
case $employeeCheck in
	$is_Full_Time)
	empHours=8
#calculating the full time salary of the employee
	fullTimesalary=$(( $empWagePerHours*$empHours ))
	echo "full time salary of the employee is: $fullTimesalary"
;;
$is_Part_Time)
	empHours=4
#calculating the part time salary of the employee
	partTimesalary=$(( $empWagePerHours*$empHours ))
	echo "part  time salary of the employee is: $partTimesalary"
;;
*)
esac

