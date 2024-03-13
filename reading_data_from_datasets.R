#reading data from datasets
#from excel files
#two ways
#read.csv(file.choose())
#read.csv(path)
a<-read.csv(file.choose())      #after writing this, ctrl+enter and select file from the preffered location
a
class(a)
str(a)
View(a)   #will show in better manner
dim(a)

b<-read.csv("C://lpu//4th sem//INT232 - R Programming//Datasets//Prostate_cancer.csv")  
#first the path will have '\' this should be changed to '//'  otherwise will give an error
b
str(b)
class(b)
View(b)
dim(b)

#use all functions used in built-in dataframes


#use head function
head(a)
#use tail function
tail(a)
#display 1st row
a[1,]
#display 1st, 2nd, 3rd row
a[1:3,]
#display 3rd column
a[,3]
#display 5,6,7th columns
a[,5:7]
#display element in the 1st row and 3rd column
a[1,3]
#display element in the 20th row and 7th column
a[20,7]
#display age and bloodpressure of 1st 10 persons from dataset diabetes
print(subset(head(a,n=10),select=c(Age,BloodPressure)))
#display age and bloodpressure of last 10 persons from dataset diabetes
print(subset(tail(a,n=10),select=c(Age,BloodPressure)))
#display all data from dataset diabetes whose Glucose level is 125
print(subset(a,a$Glucose==125))
#display age of person whose skinThickness is more than 19 and age is more than 35 and less than 50
print(subset(a,(a$Age>35 & a$Age<50 & a$SkinThickness>19),select=Age))
#display the data related with BloodPressure, Insulin and Glucose with the age of patient falls in the age group of 25 to 35
print(subset(a,(a$Age>25 & a$Age<35),select = c(BloodPressure,Insulin,Glucose)))
#display all data of person whose age is greater than 35
print(subset(a,a$Age>35))

