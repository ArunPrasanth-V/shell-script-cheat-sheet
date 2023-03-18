#Program for print odd number from one to 100
#!/bin/bash
for((i=1;i<=100;i++))
{
    if [[ i%2 -ne 0 ]] # if(( i%2 != 0 ))
    then
        echo $i
    fi
}
