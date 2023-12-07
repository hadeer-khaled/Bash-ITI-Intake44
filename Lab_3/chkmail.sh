#!/bin/bash

user_name="hadeer"


    if mail -H -u "${user_name}" | grep -q "^.*N.*";
    then
        echo "You have new mail!"
        mail -u "${user_name}" | grep "^.*N.*"
    else
        echo "No new mail."
    fi



#-H option to display header information
