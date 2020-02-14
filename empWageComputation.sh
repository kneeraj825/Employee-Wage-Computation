#!/bin/bash -x
#Welcome to employee wage computation
isPresent=1
employeeCheck=$(( RANDOM%2 ))

if (( $isPresent == $employeeCheck ))
then
	echo "Employee is present"
else
	echo "Employee is  absent"
fi

