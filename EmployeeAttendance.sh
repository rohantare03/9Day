ispresent=1;
check=$((RANDOM%2))

if [ $ispresent -eq $check ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
