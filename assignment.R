#assignment
#create a vector and arrange the elements in descending order
#create a vector of 20 elements and display all elements except 2nd, 4th, 6th and 8th elements
#create  a list that contains elements of type integer, numeric, complex and logical 
#extract only numeric elements
#extract all elements except logical elements
#create an array where dimensions =4,4,4
#assign names to rows, columns, matrix
#change the value of 1st row of 2nd array/matrix by 9
#extract 2nd,3rd and 4th column of 3rd matrix/array
#change the values 3rd column of 4th matrix/array


a<-c(1:1000)
sort(a,decreasing=TRUE)
b<-c(1:20)
print(b[c(2,4,6,8)])
c<-list(c(1,2,3,4),c(1.0,2.0,3.0,4.0),c(1+2i,3+4i,5+6i,7+8i),c(TRUE,FALSE,TRUE,FALSE))
print(c[[2]])
print(c[c(1,2,3)])
rname<-c("r1","r2","r3","r4")
cname<-c("c1","c2","c3","c4")
mname<-c("m1","m2","m3","m4")
e<-array(data=c(1:64),dim=c(4,4,4),dimnames=list(rname,cname,mname))
print(e)
e[1,,2]=9
print(e)
print(e[,c(2,3,4),3])
e[,3,4]=100
print(e)

