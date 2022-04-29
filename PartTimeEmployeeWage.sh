isPartTime=1;
isFullTime=2;
empRatePerHr=20;
check=$((RANDOM%3))

if [ $isPartTime -eq $check ]
then
	empHrs=4;
elif [ $isFullTime -eq $check ]
then
	empHrs=8;
else
	empHrs=0;
fi
salary=$(($empHrs*$empRatePerHr))
