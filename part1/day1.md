``` 2>/dev/null 1>/dev/null ```
``` exit 1 //any non 0 value```
# String
```
- find length=${#name}
- concat=$name1$name2
- convert String into 
      lower_case=${name^^} , var=$(echo "$name"|tr [a-z] [A-Z]
      upper_case=${name,,}
```
## replace the substring
```
- echo "${name/arun/arunDev}"
- echo "$name" | sed 's/arun/ARUNdev/'
```
## Get SubString
```
   ${varibleName:2:5} // from 2 to 5
   ${varibleName:2} //from 2 to end
```
## path
```
 - realpath demp.sh  //-give the complepath this file(simply append pwd path)
 - basename test.sh //o/p: test 
 - dirname  //give dir path exclude basename      
 ```
 ## read from user
 ```
   - read -p "enter you're name : "  varible name //p represent promt.
   $REPLY  //if readed varible not stored in varible by default it stored in $REPLY varible
 ```
## command line argument
```
   - $0 - get the file name with current directoty
   - $1 - while running the script eg: sh test.sh arun //here arun is the $0
   - ${11} -for two digit number we should take like this 
   - $#  -print the number of commandline argument you give 
   - -$* ,$@  -print all the argument you have entered
   ```
## Arthimetic Operation
   ```
  - (()) //process only integer values
  - bc<<<"scale=1;$y/$x" // process float value 
  - c=$((a+b))
  ```
## Case
```
case $c in
        1)
                echo "add $((a+b))"
                ;;
        2)
                echo "sub $((a-b))"
                ;;
        3)
                echo "mul $((a*b))"
                ;;
        4)
                echo "div $((a/b))"
                ;;
        *)
                echo "invalid option"
                ;;
esac
```
## Test command  [[ ]]
```
## Numbers
      - [[ int 1 -eq int2 ]] //if true return 0
      -ne //not equal
      -lt //less then
      -le //less then or equal
      -gt //greater then 
      -ge //greater then or equal
      -eg //equal 
      eg: [[ ! 1 eq 1 ]]
  ```
  ## command chaining operator
 ```
   - ; , &&, ||, && ||
    -> cmd1 ;cmd2 ->run cmd 1 and cmd 2 regard less of the failure of cmd1.
    -> cmd1 &&cmd2 ->one should be success then only two
    -> cmd1 || cmd2 -run cmd two only if cnd one failed
    -> cmd1 && cmd2 ||cmd 3 -> will execute if cmd 1 fails
      
  ```
  ## block of code
     ```
     -> { pws;ls;data }
     
     -> which docker && { echo "docker installed";run docker }
     ```
  
  ## if condition
   ```
   Syntax :
     cmd1 && cmd2
     ------
            if cmd1
            then
              cmd2
            fi
     ------
            if [[ $? -eq 0 ]] //for comparation and file test should use [[]]
            then
             echo "success"
            fi
      ------
      
   ```
  ## if else statement
  ```
      -> cmd1 && cmd2 || cmd3
      
      if cmd 1
      then
            cmd2
      elseif
      then 
            cmd
       else
            cmd3
       fi
  ```
  ## identify that current user is root user
    ```
    'id -u' (shows number), 'id -un' (shows the user name).
    
    ```
  ## Logical Operators 
  ```
   AND -> &&, -q
   OR  -> ||, -o
   NOT -> !
   
   eg: [[ $a -gr $b && $a ls 100 ]],
        [ $a -gr $b -a $a ls 100 ]
        [[ $ip = "yes" ]]
        [[ $ip =~ y|yes ]] //should not use quotation.
     
  ```
