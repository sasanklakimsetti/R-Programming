#array
#single dimension array
#array() function with single parameter
#syntax : array(data)
#array in R takes vector as input
#we need to create a vector first and then convert into an array
a<-c(1:5)
arr<-array(a)
print(arr)


#multidimensional array
#array() function with 2 parameters
#syntax : array(data, dim=c(no.of rows, no.of columns, no.of array/matrix))
b<-c(6:10)
c<-c(11:15)
arr1<-array(c(b,c),dim=c(2,2,3))
print(arr1)

#naming of arrays
#syntax: array(data,dim=c(no.of rows, no.of col, no.of matrix/array),dimnames = list(row_name,col_name,mat_name))
d<-c(16:21)
e<-c(22:27)
row_name<-c("row1","row2")
col_name<-c("col1","col2")
mat_name<-c("mat1","mat2","mat3")
arr2<-array(c(d,e),dim=c(2,2,3),dimnames = list(row_name,col_name,mat_name))
print(arr2)

#accessing elements of an array
#syntax: arr[row_no,col_no,matrix_no]
print(arr2[2,2,3])    #it will print 2nd row 2nd column element of 3rd matrix
print(arr2[c(1,2),,1])  #will print 1st and 2nd row of all columns of 1st matrix
print(arr2[,1,2]) #will print 1st column of all rows of 2nd matrix
print(arr2[1,,3])  #will print 1st row of 3rd matrix
print(arr2[1,c(1,2),])  #will print 1st and 2nd column if all matrix
print(arr2[1,1,c(1,2)]) #will print 1st row 1st column of 1st and 2nd matrix
#c() function in accessing elements of an array is used for accessing multiple rows/columns/matrix elements
