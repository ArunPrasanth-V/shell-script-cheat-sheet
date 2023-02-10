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
```
# Example
```sh
grep -r 'HANDLE REQUEST CHANGE.*arunjavaserver' ./logs/serverout.txt
ls -lh lib/test.jar   o/p: -rw-r--r-- 1 sas sas 1.3M Feb 10 10:11 lib/test.jar
