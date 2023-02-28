# AWK

```
$1,$2,$3 -> fields
NR ->no of record   <which Line>
NF ->no of fields
FILENAME   -> give the file name.


eg:
ex.txt
this is one
this is two
this is three
this is four

awk '{print $1}' ex.txt     awk '{print NF}'    awk '{print NR}'
this                               3                  1
this                               3                  2
this                               3                  3
this                               3                  4

eg:
awk 'NR>=2 && NR<=3 {print }' ex.txt
``` 
# AWK scripting :
```
syntax:
  - awk 'BEGIN {start_action} pattern/condition {action} END {stop_action}' filename
  - awk -f awk_script.awk filename
  
  -> BEGIN block is performed before reading the file.
  -> END block is performed after processing the file.
# NOTE :
  - awk script require atleast one action to excute the script.
  - No need of input for BEGIN action.  eg: awk 'BEGIN {print "ok"}' ex.txt  //here no need for file or input

```
## eg :
```
awk  'BEGIN {print "-----------Starting Point---------"} /one/ {print } END {print "------------end--------------"}' ex.txt 
o/p :
-----------Starting Point---------
this is one
this is one
one is this`
------------end--------------
```
### with files
```
awk -f helloworld.awk ex.txt 

helloworld.awk
BEGIN { print "-----------Starting Point---------"} 
/one/ { print } 
END { print "------------end--------------"}
```


```
awk option 'pattern {action}' filename
command | awk options 'pattern {action}'

options:
 -F (filed separator) specify a fiels separator
 -v var=value tp declare a variable
 -f file to specify a file that contains awk script
```
```
awk -F ':' {print $1,$5} file.txt

awk -v a=5 -v b=10 '{print $1,a,b}' ex.txt
```
## run the awk script
```
file
#!/usr/bin/awk -f
BEGIN {print "-----------HELLO--------"}

---
run:
./awksc.awk 
```
### initialize a variable
```
in s BEGIN block we can initilize

awk 'BEGIN {a=5 ; print 5}'
```

# read values from command line .
  ```
  we can do it in two ways i)file ii)command
  
  awk 'pattern/condition { } END { }' filename
   eg: awk '{a=$1; b=$2; print $2,$1}' num.txt      num.txt 10 20
  
  command | awk 'pattern/condition { } END {  }'
  eg: echo "13 18"| awk '{print $1, $2}'
  
  
  echo "5 10"| ./awkvar.awk
  ./awkvar.awk num.txt
  

#!/usr/bin/awk -f
BEGIN {print "--start--"}
{
        a=$1; 
        b=$2; 
        print a," and ",b
}
END {print "--end--"}
  ```
