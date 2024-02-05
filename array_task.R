#create an array of size(4,4,5)
#assign names to the elements of the array
#access all rows of 1st matrix
#access 2nd and 3rd rows of 4th matrix
#access 3rd column of 3rd matrix
#access 4th row and 4th column of 2nd matrix
#access element in  the 4th row and 3rd column of 3rd matrix
#access element in the 3rd row and 4th column of 1st matrix
a<-c(1:80)
col_name<-c("col1","col2","col3","col4")
row_name<-c("row1","row2","row3","row4")
mat_name<-c("mat1","mat2","mat3","mat4","mat5")
arr<-array(a,dim=c(4,4,5),dimnames = list(row_name,col_name,mat_name))
print(arr)
print(arr[,,1])
print(arr[c(2,3),,4])
print(arr[,3,3])
print(arr[4,4,2])
print(arr[4,3,3])
print(arr[3,4,1])