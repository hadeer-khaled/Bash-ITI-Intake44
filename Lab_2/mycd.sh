#!/bin/bash
if [ $# -eq 0 ];
then
 cd ~
else
 cd $* 
fi
