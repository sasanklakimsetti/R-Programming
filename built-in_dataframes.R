#built-in datasets/ dataframes

#trees
trees
class(trees)   #which class does it belong to
str(trees)     #structure of the dataframe
dim(trees)     #dimensions of the dataframe
max(trees$Girth) #maximum element of a particular column in the dataframe
min(trees$Girth)  #minimum element of a particular column in the dataframe
mean(trees$Girth)  #mean of a particular column in the dataframe
median(trees$Girth)  #median of a particular column in the dataframe
sd(trees$Girth)  #standard deviation of a particular column in the dataframe

max(trees$Height)
min(trees$Height)
mean(trees$Height)
median(trees$Height)
sd(trees$Height)

max(trees$Volume)
min(trees$Volume)
mean(trees$Volume)
median(trees$Volume)
sd(trees$Volume)

#cars
cars
class(cars)
str(cars)
dim(cars)
max(cars$speed)
min(cars$speed)
mean(cars$speed)
median(cars$speed)
sd(cars$speed)

max(cars$dist)
min(cars$dist)
mean(cars$dist)
median(cars$dist)
sd(cars$dist)


#extract the values of trees having height greater than 60
a<-subset(trees,trees$Height>60)
print(a)

#from dataset trees, extract volume whose Girth is greater 8.6
#b<-subset(trees, trees$Girth>8.6, select=Volume)
#print(b$Volume)
b<-subset(trees,trees$Girth>8.6,select=Volume)  #stores only volume if Girth is greater than 8.6
print(b)
#both methods are same

#extract 63 from dataset trees
print(subset(trees,trees$Height==63,select=Height))

#extract 1st and 3rd columns
print(trees[-2])

head(trees)  #first 6 elements of the trees (default)
tail(trees)  #last 6 elements of the trees  (default)

head(trees,n=8)  #first 8 elements of trees
tail(trees,n=2)  #last 2 elements of trees

head(cars)
tail(cars)
head(cars,n=17)
tail(cars,n=17)
head(cars,n=55)

#extract 15th, 17th, 21st, 23rd row from trees
print(trees[c(15,17,21,23),])
#extract 15 to 31 rows of trees
print(trees[15:30,])

