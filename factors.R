#factors : they are used to store categorical values and levels
#categorical values are the values which are predefined like TRUE, FALSE; YES, NO; MALE, FEMALE; DIRECTIONS
#syntax: factor()
a<-c("Yes","No","Yes","No","Yes","No","Yes")
a
a1<-factor(a)
a1     #will only print two levels i.e. every value one time
#the levels will be printed in the alphabetical order
a2<-c("TRUE","FALSE","TRUE","FALSE")
a2
a3<-factor(a2)
a3
a4<-c("East","West","East","South","West","North")
a4
a5<-factor(a4)
a5
a1[1]     #will print the value of 1st index of vector through which the factor was made
a1[2]     #will print the value of 2nd index of vector through which the factor was made
a1[1]<-"No"  #modifying the value of a1[1]   i.e. the value will be modified in the vector through which the factor was made.
a1
#a1[2]<-"Hello"   this will give error   we first need to add that level and then need to modify the value.
#as there are only two levels in the factor i.e. Yes and No    if we try to modify them with new level other than them it will give an error
#to add a new level inside the factor
levels(a1)<-c(levels(a1),"Hello")
a1    #now we can observe a new level called "Hello"
a1[2]<-"Hello"    #now it won't raise any error if we try to modify it and it will get modified
a1
levels(a1)<-c(levels(a1),"Bye")
a1[8]<-"Bye"
a1

x<-c("West","North","West","South","East","South","North","East")
y<-factor(x)   
y
#to change the order of levels
z<-factor(y, levels=c("East","West","North","South"))
z
#extracting elements by logical values
y<-y[c(TRUE,FALSE,TRUE,TRUE,FALSE)]    #will print the values from the factor where the logical value is TRUE and won't print those where the logical value is TRUE
y    #will print West West South South East as those were the values where the logical value TRUE is applied in the statement

#gl(no.of levels, replicants, labels) is used to generate replicants/ factors with specific patterns
x<-gl(3,4,labels=c("DBMS","R Programming","Excel"))
x

