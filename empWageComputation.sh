#!/bin/bash -x
#checking the employeeispresent or not
isPresent=1
employeeCheck=$(( RANDOM%2 ))
empWagePerHours=20
if (( $isPresent == $employeeCheck ))
then
	empHours=8
#calculating the salary of the employee
	salary=$(( $empWagePerHours*$empHours))
	echo "$salary"
else
	salary=0
fi

