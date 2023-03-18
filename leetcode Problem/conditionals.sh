#!/bin/bash
read c
c=$(echo $c | tr '[:upper:]' '[:lower:]')
if [[ "$c" == "y" ]];
then
 echo "YES"
else
 echo "NO"
fi



command << mycmd
Read in one character from STDIN.
If the character is 'Y' or 'y' display "YES".
If the character is 'N' or 'n' display "NO".
mycmd
