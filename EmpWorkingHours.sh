isPartTime=1;
isFullTime=2;
MaxHrsInMonth=4;
empRatePerHr=20;
numWorkingDays=20;
totalWorkHrs=0;
totalWorkingDays=0;

function getWorkHours () {
	case $1 in
		$isPartTime)
			workHours=4;
			;;
		$isFullTime)
			workHours=8;
			;;
		*)
			workHours=0;
			;;
	esac
	echo $workHours
}

while [[ $totalWorkHrs -lt $MaxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
done
totalSalary=$(($totalWorkHours+$empRatePerHr))
