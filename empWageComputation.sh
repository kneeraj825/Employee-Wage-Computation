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
#checking the employee is for full time or part time
function calcDailyWage(){
	empHours=$1
	dailySalary=$(( $empHours*$EMPWAGEPERHOURS ))
		echo $dailySalary
}

function empWorkHours() {
	case $1 in
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
		echo $empHours
}
while (( $workingDays < $MAXIMUMWORKINGDAYS && $workingHours < $MAXIMUMWORKINGHOURS ))
do
	employeeCheck=$((RANDOM%3))
   ((workingDays++))
#total working hours calculating
	empHours=$( empWorkHours $employeeCheck )
	workingHours=$(( $workingHours+$empHours ))
	dailyWage[$workingDays]=$( calcDailyWage $empHours )
done
#calculating the total salary of the employee
totalSalary=$(( $EMPWAGEPERHOURS*$workingHours ))
echo "salary of the month is:$totalSalary"
echo "daily salary is:${dailyWage[@]}"
echo "total number of days:${#dailyWage[@]}"
