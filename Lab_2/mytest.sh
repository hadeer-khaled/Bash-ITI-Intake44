#!/bin/bash
if [ $# -eq 1 ]; then
    if [ -e "$1" ]; then
        if [ -f "$1" ]; then 
            echo "This $1 is a file."
        elif [ -d "$1" ]; then
            echo "This $1 is a directory."
        else
            echo "This $1 is neither a file nor a directory."
        fi

        if [ -r "$1" ]; then
            echo "This $1 has read permission."
        fi
        
        if [ -w "$1" ]; then
            echo "This $1 has write permission."
        fi
        
        if [ -x "$1" ]; then
            echo "This $1 has execute permission."
        fi
    else
        echo "$1 does not exist."
    fi
else 
    echo "Usage: $0 [FILE]"
fi


