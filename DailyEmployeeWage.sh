ispresent=1
check=$((RANDOM%2))

if [ $ispresent -eq $check ]
then
	empRatePerHr=20;
	empHrs=8;
	salary=$(($empRatePerHr*$empHrs))
else
	salary=0;
fi
