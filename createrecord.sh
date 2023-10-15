#!/usr/bin/env bash
#create the students record
echo "Please input your student email:"
read -r STUDENTEMAIL
echo "Please input your age:"
read -r AGE
echo "Please input your studentid:"
read -r STUDENTID
folder="Students-list_0923.txt"
while true;
do
	CHECKID=$(grep -Eio "$STUDENTID" Students-list_0923.txt)
	CHECKEMAIL=$(grep -Eio "$STUDENTEMAIL" Students-list_0923.txt)

	if [[ "$STUDENTID" = "$CHECKID" || "$STUDENTEMAIL" = "$CHECKEMAIL" ]];
	then
		echo "This email or id already exists"
		grep -Ewi "$STUDENTID" students-list_0923.txt || grep -Ewi "$STUDENTEMAIL" $folder
		sleep 2
	else
		echo "{STUDENTEMAIL:$STUDENTEMAIL, AGE:$AGE, STUDENTID:$STUDENTID}" >> $folder
		echo "created successfully..."
		exit 1
	fi
	echo "give me another email or id or both again based on the record given to you that has either the email or id repeated in our studentlist"
	echo "give me previous/another studentid"
	read -r STUDENTID
	echo "give me previous/another email"
	read -r STUDENTEMAIL
done
