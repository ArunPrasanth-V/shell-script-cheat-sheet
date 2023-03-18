#!/bin/bash
read a
read b
for((i=1;i<= 4;i++))
{
    case $i in
        1)
         echo $(( $a + $b ))
         ;;
         2)
         echo $(( $a - $b ))
         ;;
         3)
         echo $(( $a * $b ))
         ;;
         4)
         echo $(( $a / $b ))
         ;;    
    esac
}
