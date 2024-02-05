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
#accessing 2nd row 3rd column of the matrix
print(c[2,3])
