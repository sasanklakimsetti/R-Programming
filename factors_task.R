#create a factor of 10 elements
#access 8th value
#access 6th and 9th value
#access 1st, 2nd, 3rd and 4th value
#access all values except 7th value
#access all values except 5th and 10th values
#access all values except 7,8,9th values
#access all values except 2,4,6th
#access 2,5 and 8th elements by using logical values
#modify the value of 3rd element
#modify the value of 7th element
#add 3 more values
#after adding levels modify the value of 8th and 10th values
#change the order of levels
#generate 4 factor levels and repeat values 5 times

x<-c("Yes","No","Yes","No","Yes","No","Yes","No","Yes","No")
x<-factor(x)
x

x[8]
x[6]
x[9]
x[1:4]
x[-7]
x[5]
x[10]
x[-7:-9]
x[-2]
x[-4]
x[-6]
x

x<-x[c(FALSE,TRUE,FALSE,FALSE,TRUE,FALSE,FALSE,TRUE)]
x

x[3]<-"No"
x[7]<-"Yes"
x

levels(x)<-c(levels(x),"True","False","Bye")
x

x[8]<-"True"
x[10]<-"False"
x

x<-factor(x,levels=c("Yes","No","True","False","Bye"))
x

x<-gl(4,5,labels=c("Hi","Hello","How are you?","Okay"))
x