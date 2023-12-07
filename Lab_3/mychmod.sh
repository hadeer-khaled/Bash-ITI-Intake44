#!/bin/bash
shopt -s extglob

cd ~
for item in `ls`
do 
	chmod +x ~/"$item"
done

