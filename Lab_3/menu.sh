#!/bin/bash

select choice in "ls" "ls -a" "exit"
do
    case $choice in
        "ls") 
            echo "ls Command will be executed"
            ls
            ;;
        
        "ls -a") 
            echo "ls -a Command will be executed"
            ls -a
            ;;

        "exit") 
            echo "Exite"
            exit 0
            ;;
        
        *)
            echo "UNKNOWN OPTION"
            ;;
    esac
done

