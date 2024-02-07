#dataframe : it is like a matrix but it can store data of multiple datatypes whereas matrix/array store homogeneous data
#creating a dataframe
#syntax: data.frame()
a<-data.frame(stud_rollno=c(1:3),
              stud_name=c("Rahul","Hia","Rfs"),
              stud_age=c(20,21,19))
print(a)
str(a)  #display the internal structure of dataframe
length(a)   #finding the length of dataframe
#extract 1st and 2nd column
print(a[2:3,])
print(a)
#extract 2nd and 3rd row
print(a[,1:2])

#using dollar sign extracting a specific row
#print(a$stud_rollno)
#print(a$stud_name)


#extracting specific column using $ sign
result<-data.frame(a$stud_age)
result

#adding two more rows in dataframe
b<-list(4,"amit",22)   #should be equal to no.of columns otherwise give error. should consider the count upto then
c<-list(5,"sumit",23)
a<-rbind(a,b)
a<-rbind(a,c)
print(a)

#adding two more columns in dataframe
d<-c("delhi","mumbai","chennai","kolkata","hyderabad")   #should have entries equal to no.of rows otherwise gives error. should consider the count upto then
e<-c(123456,789123,456789,123456,789123)
a<-cbind(a,address=d)
a<-cbind(a,number=e)
print(a)

#delete a row
a<-a[-1,]
print(a)

#delete a columns
a<-a[,-1]
print(a)

#to combine two data frames horizontally we use cbind
#should have equal no.of columns
a1<-data.frame(id=c(1,2,3),name=c("hi","hey","hello"))
a2<-data.frame(id=c(4,5,6),name=c("bye","see you","okay"))
a3<-cbind(a1,a2)
a3
#to combine two data frames vertically we use rbind
#should have equal no.of rows
a4<-data.frame(id=c(1,2,3),name=c("Sai","Ram","Rishith"))
a5<-data.frame(age=c(19,19,18),number=c(123,456,789))
a6<-rbind(a4,a5)
a6
#to find subset of a frame we use subset function
subset(a,stud_age>21)
subset(a,address!="kolkata")
subset(a,stud_age>20,select = -stud_name)    #won't select the entire stud_name column and show the remaining entries with age>20
subset(a,stud_age>21,select=c(-address, -stud_name))       #will show the entries whose age>21 and won't show the columns address and name
subset(a,stud_age>22,select=c(address))     #will show only address where age>22
