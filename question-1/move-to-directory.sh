#!/usr/bin/env bash 
#check if directory exists
folder="negpod_11-q1"
#file initialization
s_email='select-emails.sh'
main='main.sh'
file_path='Students-list_0923.txt'
file_save='student-emails.txt'
if [ -f "$s_email" ] && [ -f "$main" ] && [ -f "$file_path" ] && [ -f "$file_save" ];then
if [ -d "$folder" ];then
 echo -n "Moving Files "
 
 mv -f "$main" "$s_email" "$file_save" "$file_path" "$folder"
 echo -n "Backing up data to alu-cod.online "

./backup-Negpod_11.sh
else
 echo -n "creating director "
 
 mkdir "$folder"

 echo -n "Folder Created Successful !! Moving Files "
 
 mv -f "$main" "$s_email" "$file_save" "$file_path" "$folder"
 echo -n "Backing up data to alu-cod.online "

./backup-Negpod_11.sh
fi
else
echo "Error You Files Dont Exist"
echo -n "Ending Programming "

fi
