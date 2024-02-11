#matrix
# two dimensional
#syntax : matrix(data, nrow, ncol, byrow=TRUE/FALSE, dimnames=)
#whether it's a row-wise / column-wise matrix depends on the byrow whether it is TRUE/FALSE

#row-wise matrix
a<-matrix(c(1:12),nrow = 3 , ncol=4,byrow=TRUE)
print(a)

#column-wise matrix
b<-matrix(c(13:24),nrow=3,ncol=4,byrow=FALSE)
print(b)

#take one matrix and give them dimension names and access 2nd row, 3rd column of it
r_name<-c("row1","row2","row3")
c_name<-c("col1","col2","col3","col4")
c<-matrix(c(26:37),nrow=3,ncol=4,byrow=TRUE,dimnames=list(r_name,c_name))
print(c)
#accessing 2nd row, 3rd column of the matrix
print(c[2,3])
print(c[1:2,])  #1st and 2nd row
print(c[,2:3])  #2nd and 3rd column

#modify the value of element in 3rd row 4th col
c[3,4] = 39
print(c)

#delete 1st row of the matrix
#syntax : matrix_name<-matrix_name[-row_to_delete,-col_to_delete]
c<-c[-1,]
print(c)
#delete 2nd column of the matrix
c<-c[,-2]
print(c)

#to add more rows and more columns we use rbind and cbind
#rbind is to add rows
#syntax: rbind(matrix_name,data)
#cbind is to add columns
#syntax: cbind(matrix_name,data)
c<-rbind(c,c(40:42))
c<-cbind(c,c(46:47))
print(c)
#t(matrix) -> transpose
print(t(c))