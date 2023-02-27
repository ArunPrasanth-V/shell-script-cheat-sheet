# Array
 ```
 ->value seperate with space ' '
 myarray=(ls pwd date 2 5.6 "ls -lrt")
 first positions 0 , 2, 3, 4
 last position -1, -2, -3, -4
 
 ${arr[*]}
 ${arr[0]}
 ${arr[*]:2} //print values from index 2
 ${arr[*]:2:4}
 
 ${!arr[@]} //print the index.
 echo "${arr[*]}"
 ---
 arr[3]=arun
 
 p=([2]=two [5]=five [9]=nine)
 
 arr+=(1 2 3 4 5)
 ```
 # Delete an array 
  ``` 
  unset m
  ```
 # find length
 ```
 echo "${#arr[@]}"
 ```
 # Associative Array  (key-value)
 ```
 declare -a arr
 arr=([name]=arun [role]=dev)
 echo ${arr[name]}
 echo ${!arr[*]}
 
 
 echo ${#arr[@]} //print count
 echo ${!arr[@]} //print index
 echo ${arr[*]}  //print value
 ```
# loops
 ```
 1)
 
 for i in $(ls) 1 2 3 4 
 do
    #logic  here.
 done
 
 2) c type for loop
 for(( initialization; condition; increment/decremet))
 do
     //logic
 done
 -----------------
#!/bin/bash
i=0 
for((;;))
do
    echo $i
    if [[ $i -eq 10 ]]
     then
       break
    fi
    ((i++))
 done
 ```
# diff "$@", "$\*" (1 3 4 5) ->take as a single line, [$@and $\*] ->take a single line even 1 2 "3 4" 5. it process separately.


## for loop with array
```
arr=(1 2 3)
for i in ${arr}
do
  #login 
 done
``` 
# while loop 
 ```
 while true                while :
 do                        do
  #logic                    #logic
 done                      done
 ```
 
```
#!/bin/bash

filename="rootornot.sh"
while  read i
do
        echo "$i"
done < $filename  #take line form this file.
```
```
# IFS - internal field seperator. ' '(space)
old_ifs=$IFS
awk 'NR!=!1 {print}' |while IFS="," f1 f2 f3 f4 # f1 f2 is very important.
do
 echo $f3
done
IFS=$old_ifs
```

# Functions

```
mycode()
{
  local p=10
  read -p "Enter the number 1" num1
  read -p "Enter the number 2" num2
}
mycode
    (or)
function mycode
{
  read -p "Enter the number 1" num1
  read -p "Enter the number 2" num2
}
```
```
#!/bin/bash
func()
{
 local n=5
 echo $n
}
c=$(func)
echo $c
    (or)

#!/bin/bash
func()
{
 local n=5
 return $n
}
func
c=$? # return the o/p of the func function.
echo $c
```


# parsinf parameter 
```
#!/bin/bash
add()
{
 local c=$(($1+$2))
  echo $c
}
echo $(add 5 4)
```

# printf command 
```
- By default it not sending curser to next line.
adv:
  - we can format the output.
```

```
printf "%113 s" " " |tr " " "-"
```

```
 %% for percent % symbol
```
