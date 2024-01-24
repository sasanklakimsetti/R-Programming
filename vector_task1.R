#create a vector of 30 elements by using c(), seq() and  : 
#sort elements in ascending order
#sort elements in descending order
#display 6th and 10th element
#display all values except 20th value
#display maximum value
#display minimum value
#delete a vector
#create two vectors and concatenate them 
#perform all arithmetic operations

v1<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)
v1<-seq(1:30)
v1<-1:30
sort(v1)
sort(v1,decreasing=TRUE)
v1[6]
v1[10]
v1[-20]
max(v1)
min(v1)
v1=NULL
v1

v2<-1:15
v3<-16:30
v4<-c(v2,v3)
v4

v5=v2+v3
v6=v2-v3
v7=v2*v3
v8=v2/v4

v5
v6
v7
v8

#modify the value of 7th index
v2[7]=31
v2