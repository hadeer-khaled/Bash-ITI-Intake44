#!/bin/bash

while true; 
do
    echo "1. Press 1 to ls"
    echo "2. Press 2 to ls -a"
    echo "3. Press 3 to exit"

    read -p "Enter your choice: " choice

    case $choice in
        1) 
            echo "ls Command will be executed"
            ls
            ;;
        
        2) 
            echo "ls -a Command will be executed"
            ls -a
            ;;

        3) 
            echo "Exite"
            exit 0
            ;;
        
        *)
            echo "UNKNOWN OPTION"
            ;;
    esac
done

