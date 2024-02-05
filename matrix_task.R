#create a matrix of 30 elements
#name all rows and columns
#access 3rd,4th,5th row of the matrix
#access 1,2,3,4th columns of the matrix
#access element int 3rd row 3rd column
#access element in the 2nd row 5th column
#modify the elements by 0 that are greater than 10
#modify all element by -1 that are less than 10
#add 2 rows and 3 columns
#transpose the matrix
#delete 3rd row
#delete 1st column
#create two matrix and preform all arithmetic operation


r_name<-c("row1","row2","row3","row4","row5")
c_name<-c("col1","col2","col3","col4","col5","col6")
a<-matrix(c(1:30),nrow=5,ncol=6,byrow=TRUE,dimnames=list(r_name,c_name))
#accessing elements of the matrix
print(a)
print(a[3:5,])
print(a[,1:4])
print(a[3,3])
print(a[2,5])
#applying for loop
#modifying the elements of the matrix
for(i in 1:5){     #i for rows
  for(j in 1:6){   #j for columns
  if(a[i,j]>10){   
    a[i,j]=0
  }
  else if(a[i,j]<10){
    a[i,j]=-1
  }
  }
}
print(a)
#adding two more rows to the matrix
a<-rbind(a,c(31:36))
a<-rbind(a,c(37:42))
#adding two more columns to the matrix
a<-cbind(a,c(43:47))
a<-cbind(a,c(48:52))
print(a)
print(t(a))       #transpose of a matrix
#deleting 3rd row of the matrix
a<-a[-3,]
#deleting 1st column of the matrix
a<-a[,-1]
print(a)
#creating two new matrices
b<-matrix(c(1:4),nrow=2,ncol=2,byrow=TRUE)
c<-matrix(c(5:8),nrow=2,ncol=2,byrow=TRUE)
#performing all arithmetic operations on them
print(b+c)
print(b-c)
print(b*c)
print(b/c)