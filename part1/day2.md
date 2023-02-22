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
 
