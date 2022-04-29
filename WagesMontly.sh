isPartTime=1;
isFullTime=2;
MaxHrsInMonth=100;
empRatePerHr=20;
numWorkingDays=20;
totalempHrs=0;
totalWorkingDays=0;

while [[ $totalempHrs -lt $MaxHrsInMonth && $totalWorkingDays -lt  $numWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	case $empCheck in
		$isPartTime)
			empHrs=4
			;;
		$isFullTime)
			empHrs=8
			;;
		*)
			empHrs=0
			;;
	esac
	totalempHrs=$(($totalempHrs+$empHrs))
done

totalSalary=$(($totalempHrs*$empRatePerHr))
