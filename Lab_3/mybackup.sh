#!/bin/bash
shopt -s extglob

: '
for file in `ls -R ~`
do
	if [ -f "$file" ]
	then
	echo  $file
	fi
done
'

: '
mkdir  $HOME/backup

for file in `ls -p "$HOME" | grep -v /`
do 
	cp "$file" "$HOME/backup"
	echo "$file" 
done
'	
if [ $# -eq 0 ];
then
	 mkdir "$HOME/backup"
 	 backup_dir="$HOME/backup"
else

	if [ ! -d "$*/backup" ]; 
	then
	    
	    mkdir "$*/backup"
	    backup_dir="$*/backup"
	else
	    echo "Backup directory already exists: $backup_dir"
	fi
fi

for file in "$HOME"/*; 
do

	if [ -f "$file" ]; 
	then

	file_name=$(basename "$file")

	cp "$file" "$backup_dir/$file_name"
	arr+=("$file_name")
	

	echo "$file_name is successfully copied"
	
	fi
	
done
	echo " "
	echo "The above files will be archived and compressed in backup.tar"
	#echo "This is the all files that will be archived ${arr[@]}"
	tar czf "$backup_dir/backup.tar" -C "$HOME" ${arr[@]}
	echo "All files have been achived and compressed successfully/"


#Used mkdir -p to create the backup directory and its parent directories if they don't exist.
#Used -C "$HOME" with tar to set the base directory for archiving, so the archive doesn't include the full path to each file.





