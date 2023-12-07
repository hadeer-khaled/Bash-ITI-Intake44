#!/bin/bash
shopt -s extglob

read -p "Please Enter a character: " input_char

case $input_char in
    +([A-Z]))
        echo "$input_char is Upper Case."
        ;;
    +([a-z]))
        echo "$input_char is Lower Case."
        ;;
    +([0-9]))
        echo "$input_char is Number."
        ;;
    +([0-9a-zA-z]))
        echo "$input_char is Mix."
        ;;
    *)
        echo "Nothing."
        ;;
esac

