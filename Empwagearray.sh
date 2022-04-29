isPartTime=1;
isFullTime=2;
MaxHrsInMonth=4;
empRatePerHr=20;
numWorkingDays=20;
totalEmpHrs=0;
totalWorkingDays=0;

function getWorkHrs () {
	local $empCheck=$1
        case $empCheck in
                $isPartTime)
                        empHrs=4;
                        ;;
                $isFullTime)
                        empHrs=8;
                        ;;
                *)
                        empHrs=0;
                        ;;
        esac
        echo $empHrs
}

function getEmpWage() {
	local empHr=$1
	echo $(($empHr*$empRatePerHr))
}

while [[ $totalEmpHrs -lt $MaxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
	empHrs="$( getWorkHrs $empCheck )"
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
	dailywage[$totalWorkingDays]="$( getEmpWage $empHrs )"
done
totalSalary=$(($totalEmpHrs+$empRatePerHr))
echo ${dailywage[@]}
