#!/bin/bash
read -p "Enter the month : " usermonth
month=$(date| tr [:upper:] [:lower:] |awk '{print $3}')
if [[ $month == $usermonth ]]
then
        echo "the is march"
else
        if [[ $day -eq $usermonth ]]
        then
                echo "approximate match"
        else
                echo "no match"
        fi
fi
