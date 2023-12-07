#! /bin/bash

for name in  `cut /etc/passwd -d: -f1`
do 
	mail -s Greating $name < mtemplate.txt
	#echo "$(< mtemplate.sh )" 
done
