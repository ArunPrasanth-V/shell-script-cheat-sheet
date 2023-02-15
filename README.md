# shell-script-cheat-sheet
## Read a file with conditions
```using more, head, tail, grep, awk, sed```<br>
   ### more
        - more -n <file-name>  open upto the n line
        - more +n <file-name>  open from the nth line
## Read the Specfic line from a File<br>
```sh
1)head and tail
    - head -10 log.txt | tail -3
2)awk
    - awk 'NR>=6 && NR<=12 {print}' log.txt    
3)sed
    - sed -n '6,13p' log.txt 
```
### Grep command with basic options
```md
   -i, -w, -v, -o, -n, -c, -A, -B, -C, -r, -l, -h
   
   ### Syntax
   - grep "String/pattern" file/files
   - grep [options] "String/pattern" file/files
  
   ## Options :
   -i = ignore the case sensitivity
   -w = word matching
   -v = display the line that not having the word
   -o = print only exact matching words
   -n = display the matched line number
   -c = count of the matched line
   -A = display N line **after** the match
   -B = ``   ``    ``  **before** the match
   -C = display N lines around the match (both after and before).
   -r = search in current directory and sub directory aswell
   -l = if match display only the file name
   -h = to hide file name
   -t = display only the file name where the pattern is matching
```
# Example
```sh
grep -r 'HANDLE REQUEST CHANGE.*arunjavaserver' ./logs/serverout.txt
ls -lh lib/test.jar   o/p: -rw-r--r-- 1 sas sas 1.3M Feb 10 10:11 lib/test.jar
```
# Advanced command
```sh
grep -f file.txt (take text from the file)
grep -e "java"  -e "class"  file.txt(give Multiple search string)
grep -E "java|class" file.txt(give Multiple String in s pattern)

# Rule to create a pattern
- XY|pq Matches for xy or pq
- ^xyz  Matches for the lines which are starting with "xyz"
- xyz$  Matches for the lines which are ending with "xyz"
- ^$    Mathes for the lines which are empty
- \     Remove the purpose of any symbol
- t..s  Word starting with t and 2 char inbetween and in the end s.
- java/b Word end with space
-?      preceding character of ? may contains 0 time or 1 max. eg:grep -E "jy?" log/logs.txt
-  *    preceing character match 0 or more time.
-  f+   minimum 1 time f but maximum any number of times.
- [abc] looking for each character individually like grep -E "a|b|c"
- [a-d] seach a,b,c,d. eg: [a-dp-r]
- ^[abc] look for the line which are starting with a or b or c.
- [^zbc] look for other then a or b or c
- {N}    preceding character contains N time eg: grep -E "j{3}" o/p: starting word jjjj. 
         eg: 'jk{3,4,1}' k contains 1times or 3 or 4.
             "jk{2,}" k contains minimum 2 times max any number of time.
 - [[:alpha:]], [[:blank:]], [[:digit:]], [[:lower:]], [[:upper:]], [[:space:]] 
```
# Cut command :
- it is a powerful tool to extract parts of each line from a file.
```
eg: 
   - cut -c 4,6 log/log.txt  //get 4 ,6 char from the file
             -7               //start form 1 till 7
             5-               //start from 5 till end
             
   - cut command is mostly useful in delimitor
       cut -f 2 filed.tzt
   - delimitor
      cut -d ':' dlmr.txt (NOTE : delemetor should be 1 character).
      
