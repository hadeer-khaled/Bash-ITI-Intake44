#!/bin/bash
echo "What is your name?"
read logname
home_directory=$(grep "^$logname:" /etc/passwd | cut -d: -f6)
if [ -z "$home_directory" ] #checks if string is empty.
then 
	echo "this logname is not found"
else
	echo "Here is the full info about hadeer home directory"
	ls -l "$home_directory"
fi

echo "-----------------------"
cp -r "$home_directory" /tmp/
echo "the content of your home directort has been copied successfully to  /tmp/ " 

echo "-----------------------"
echo "Your current processes status." 
ps -u 
