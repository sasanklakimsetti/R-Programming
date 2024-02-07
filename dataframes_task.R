#create a dataframe of 5 objects
#extract 5th column by using dollar sign
#extract 2nd,3rd and 4th columns by indexing
#extract 3rd row
#extract 2nd and 3rd row
#extract 1st,2nd and 3rd row
#extract element at 2nd row and 3rd column 
#extract element at 3rd row and 3rd column
#extract element at 1st row and 2nd column
#display the structure of dataframe
#display the length of dataframe
#add 3 more rows
#add 2 more columns
#delete 2nd row
#delete 3rd column
#create two dataframes and combine them vertically
#create two dataframes and combine them horizontally
#create a subset of dataframe where id is greater than 3
#print subset except name where id is less than 4


a<-data.frame(id=c(1,2,3),
              name=c("Ram","Shyam","Sam"),
              age=c(19,20,21),
              number=c(123,456,789),
              place=c("Delhi","Mumbai","Hyderabad"))
print(a)
result<-data.frame(a$age)
result
print(a[,2:4])
print(a[3,])
print(a[2:3,])
print(a[1:3,])
print(a[2,3])
print(a[3,3])
print(a[1,2])
str(a)
length(a)
b<-list(4,
        "Bheem",
        22,
        123,
        "Chennai")
c<-list(5,
        "Neem",
        23,
        456,
        "Kolkata")
d<-list(6,"Jai",24,789,"jalandhar")
a<-rbind(a,b)
a<-rbind(a,c)
a<-rbind(a,d)
print(a)
e<-data.frame(status=c("Ok","Not OK","OK","NOT OK","OK","NOT OK"))
f<-data.frame(eligible=c('Y','N','Y','N','Y','N'))
a<-cbind(a,status=e)
a<-cbind(a,eligible=f)
print(a)
a<-a[-2,]
a
a<-a[,-3]
a
a1<-c(1:6)
a2<-c(7:12)
a3<-rbind(null1=a1,null2=a2)
print(a3)
a4<-c(13:20)
a5<-c(21:28)
a6<-cbind(null3=a4,null4=a5)
print(a6)
subset(a,id>3)
subset(a,id<4,select=c(-name))
subset(a,select=c(-name=="Jai"))
