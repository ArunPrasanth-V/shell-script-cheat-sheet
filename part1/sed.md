# sed
### syntax
```
sed [option] 'commands' [file-to-with-sed]
 -> Viewing Function
 -> searching 
 -> find and replace
 -> insertion or deletion
 -> sed also supports regular expresssion.
```
 
# Viewing
```
sed '' file.txt (like a cat command).

sed -n 'p' file.txt  // -n suprese   p ->print

sed -n '$p' file.txt //here we can set the number as well infront of p 

sed -n '2,$p' file.txt  //print 2nd line - last line
        '2,+7'          // form 2 line +7 line
        '1~2'           //will skip the range 2,4,6,8,10 

sed '3d' file.txt //print only 3 number
sed '4,$d' file.txt // form 4 to last is not print

```

```
-i //insert in my original file itself

sed -i '4,9d' file.txt //will remove the line in the file itself.
sed -i.back '3,$d' file.txt //will store the backup file.

```
# Search content :  ! ->not having this word in line
```
sed -n '/if/p' file.txt // seach for word if.

sed -n -e '/if/p' -e '/are/p' -e '/else/p' -e '/elseif/p' file.txt

diff '' and " " //in double quatation $ will work.
eg:
name=arun
sed -n "/$name/p" file.txt

sed '/echo/d' file.txt   //delete the line which are having echo.

sed '/echo/!d' file.txt //delete the line not having echo. 


# quey get line which having Pool and should not InterCommConnPool.
   cmd: grep -ri 'pool' | sed -n '/InterCommConnPool/!p'

```

# Find and replace :
```
 sed 's/old/new/' file.txt // s-subtitute in first
 sed 's/old/new/2' file.txt  //if the root is occur in 2time in a line then replace
 
 
 sed '/devops/s/old/new' file.txt //in the file search the word devops i found then in the line subtitute bash with kshell.
 
 
```
