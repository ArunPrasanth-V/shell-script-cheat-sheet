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
  ```
