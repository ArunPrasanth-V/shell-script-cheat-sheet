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
 ---
 arr[3]=arun
 
 p=([2]=two [5]=five [9]=nine)
 ```
 
