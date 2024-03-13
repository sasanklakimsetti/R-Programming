#use prostate dataset
#use head function
#use tail function
#display 1st row
#display 1st, 2nd, 3rd row
#display 3rd column
#display 5th, 6th and 7th columns
#display element in the 1st row and 3rd column
#display the element in 20th row and 7th column
#display diagnosis_result and radius whose texture is greater than 20
#display radius and smoothness of 1st 15 persons in the dataset
#display perimeter and area of 1st 15 persons in the dataset
#display all the data of the person whose radius is less than 10
#display all the data except smoothness and compact of the persons whose id is greater than 20
#display all the data except id
#display all the data related with id, radius and perimeter with the id of the patient falls in the id group of 80 to 100
#display the data except id whose diagnosis_result is M
#perform all functions on all columns of the dataset

a<-read.csv("C://lpu//4th sem//INT232 - R Programming//Datasets//Prostate_cancer.csv")
View(a)
head(a)
tail(a)
print(a[1,])
print(a[1:3,])
print(a[,3])
print(a[,5:7])
print(a[1,3])
print(a[20,7])
print(subset(a,a$texture>20,select=c(diagnosis_result,radius)))
print(subset(head(a,n=15),select=c(radius,smoothness)))
print(subset(head(a,n=15),select=c(perimeter,area)))
print(subset(a,a$radius<10))
print(subset(a,a$id>20,select=-c(smoothness,compactness)))
print(subset(a,select=-id))
print(subset(a,a$id>80 & a$id<100,select=c(id,radius,perimeter)))
print(subset(a,a$diagnosis_result=='M',select=-id))

max(a$id)
max(a$diagnosis_result)
max(a$radius)
max(a$texture)
max(a$perimeter)
max(a$area)
max(a$smoothness)
max(a$compactness)
max(a$symmetry)
max(a$fractal_dimension)
max(a$X)

min(a$id)
min(a$diagnosis_result)
min(a$radius)
min(a$texture)
min(a$perimeter)
min(a$area)
min(a$smoothness)
min(a$compactness)
min(a$symmetry)
min(a$fractal_dimension)
min(a$X)

mean(a$id)
mean(a$diagnosis_result)
mean(a$radius)
mean(a$texture)
mean(a$perimeter)
mean(a$area)
mean(a$smoothness)
mean(a$compactness)
mean(a$symmetry)
mean(a$fractal_dimension)
mean(a$X)

median(a$id)
median(a$diagnosis_result)
median(a$radius)
median(a$texture)
median(a$perimeter)
median(a$area)
median(a$smoothness)
median(a$compactness)
median(a$symmetry)
median(a$fractal_dimension)
median(a$X)

sd(a$id)
sd(a$diagnosis_result)
sd(a$radius)
sd(a$texture)
sd(a$perimeter)
sd(a$area)
sd(a$smoothness)
sd(a$compactness)
sd(a$symmetry)
sd(a$fractal_dimension)
sd(a$X)

