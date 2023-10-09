#!/usr/bin/env bash
#automatically move files to negpod_id-q1
LIST=$(ls /alu-summatives/question-1/)
mkdir "backup-Negpod_11.sh"
for FILE in $LIST;
do
	if [ -a "/alu-summatives/question-1/$FILE" ];
	then
		cp "/alu-summatives/question-1/$FILE" "backup-Negpod_11.sh"
	fi
done	
