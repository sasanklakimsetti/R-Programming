#creation of a vector
#using c function
a<-c(1,2,3,4,5)
print(a)
#using seq function
a1<-seq(1,10)
print(a1)
a2<-1:30
print(a2)


#create a vector of integer
a3<-c(-10,1,23,-5)
a4<-seq(-10,10)
a5<- -100:100
print(a3)
print(a4)
print(a5)

#create a vector of character
a6<-c('a','b','c')
print(a6)

#accessing elements of a vector
#by indexing
#in vectors indexing starts from 1
print(a[-1])  #it removes first element and display other elements
print(a[-2]) #it removes second element and display other elements
print(a[1]) #it will print the first element of the vector
print(a[2]) #it will print the second element of the vector


#create a vector of 30 elements. access 28th element and remove 19th element
a7<-1:30
print(a7[28])
print(a7[-19])

#concatenation of vector
a8<-c(1,2,3,4,5)
a9<-c(6,7,8,9,10)
a10<-c(a8,a9)
a10  #can also print a vector like this. whole vector will be printed

#NULL : it will remove the vector
x=NULL
x1<-1:10
print(x1[1:3])    #print values of vector from 1st to 3rd


#create a vector of 15 elements and print the elements from 1 to 13
a11<-1:15
print(a11[1:13])

a12<-c(1,3,5,7,9,2,4,6,8,10)
a12

a12[a12>5&a12<10] #will print the elements which are b/w 5 to 10 inclusively
a12[a12>5|a12<10] #will print the elements which are less than 10 as well as elements that are greater than 51

print(sort(a12)) #by default sorting will be done in ascending order
print(sort(a12,decreasing=TRUE)) #sorting in decreasing order with keyword decreasing=TRUE. if decreasing=FALSE then ascending

max(a12) #maximum value of the vector
min(a12) #minimum value of the vector

a13<-c(6,2,7,8,6,3,4)
print(a13)
which(a13==6)  #will print the indices where the value is 6 in a vector
a13==6  #checks the whole vector and return TRUE or FALSE for each index according to the value

x<-5 #declaration of an integer
print(x) # can also just write x 

