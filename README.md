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
