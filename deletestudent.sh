#!/usr/bin/env bash
#delete student's using id
echo "give me student ID"
read -r STUDENTID
while true;
do
	CHECKID=$(grep -Eio "$STUDENTID" Students-list_0923.txt)
	if [ -z "$CHECKID" ];
	then
		echo "This id doesn't exist:"
		echo "Put a correct id:"
	else
		sed -i "/$STUDENTID/d" Students-list_0923.txt
		echo "deleted successfully..."
		exit
	fi
	read -r STUDENTID
done
