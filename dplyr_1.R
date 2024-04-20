#dplyr is used for data manipulation
#select(), filter(), summarise(), arrange(), distinct(), group_by(), mutate()
library("dplyr")
a1<-data.frame("one"=letters[1:26],
               "Two"=LETTERS[1:26],
               "Three"=c(1:26),
               "Four"=c(1:26),
               "Five"=c(1:26),
               "Six"=c(1:26),
               "Seven"=letters[1:26],
               "Eight"=LETTERS[1:26],
               "Nine"=letters[1:26],
               "Ten"=LETTERS[1:26])
a1
a2<-data.frame(name=c("A","B","C","D"),
               course=c("BBA","MBA","BA","BE"),
               age=c(20,20,20,21),
               marks=c(10:13),
               address=LETTERS[1:4])
s<-select(a2, age, name, address)
s

#Select
#extract column 3 to column 8 using select
s1<-select(a1, 3, 8)
s1
#extract column 3 to column 8 using select without indexing
s6<-select(a1, Three, Eight)
s6
#extract all columns expect 7th and 10th
s2<-select(a1, -7, -9)
s2
#extract all columns except the one starting with "S"
s3<-select(a1, -starts_with("S"))
s3
#extract all columns ending with "e
s4<-select(a1, ends_with("e"))
s4
#extract all columns except ending with "e"
s5<-select(a1, -ends_with("e"))
s5

#Filter
#extract all columns contains "o"
s7<-select(a1, contains("o"))
s7
"extract all the rows having Six greater than 7"
f1<-filter(a1, Six > 7)
f1
f2<-filter(a1, Five > 2)
f2

#Arrange
a3<-arrange(a1, desc(Six))
a3
a4<-arrange(a1,-Six)
a4

#15-04-2024

d2<-data.frame(name=c("Abhishek","Amit","Ritu","Mani","Aakash"),
               age=c(20,19,21,20,20),
               ht=c(5,6,5,6,5),
               marks=c(8,10,7,9,8))
#extract all columns where age is greater than 20
filter(d2,age > 20)
#extract the columns whose name starts with H

#mutate()
sd1<-mutate(d2, add=ht+age)
sd1

#transmute()
sd7<-transmute(d2, add=age+ht)
sd7

#rename()
sd2<-rename(d2, height=ht)
sd2
sd6<-rename(d2, grade=marks)
sd6

#summarise()
sd3<-summarise(d2, mean=mean(age))
sd3
sd4<-summarise(d2, max=max(age))
sd4
sd5<-summarise(d2, med=median(age))
sd5


#read any csv file and apply all dplyr functions
data<-read.csv("C://lpu//4th sem//INT232 - R Programming//Datasets//bestsellers with categories.csv")
data
print(colnames(data))
sub1<-select(data,1,2)
sub1
sub2<-select(data, 2, 7)
sub2
sub9<-select(data, starts_with("F"))
sub9
sub10<-select(data, ends_with("E"))
sub10
sub11<-select(data, -starts_with("F"))
sub11
sub3<-filter(data, Genre=="Fiction")
sub3
sub4<-filter(data, Year==2018)
sub4
sub12<-filter(data, Year>2018)
sub12
sub13<-filter(data, Year<2018)
sub13
sub14<-filter(data, Year!=2018)
sub14
sub5<-mutate(data, add=Price+Year)
sub5
sub15<-mutate(data, sub=Price-Year)
sub15
sub16<-mutate(data, mul=Price*Year)
sub16
sub17<-mutate(data, div=Price/Year)
sub17
sub18<-mutate(data, mod=Price%%Year)
sub18
sub6<-rename(data, YearOfRelease=Year)
sub6
sub19<-rename(data,  Name_Of_Book=Name)
sub19
rename(data, GenreOfBook=Genre)
rename(data, PriceOfBook=Price)
rename(data, UserRating=User.Rating)
print(colnames(sub6))
sub7<-summarise(data, mean=mean(Year))
sub7
sub8<-summarise(data, max=max(Year))
sub8
summarise(data, med=median(Year))
summarise(data, mode=mode(Year))
summarise(data, min=min(Year))

#use iris dataframe
data1<-iris
data1
dim(data1)
colnames(data1)
#extract 4th column
select(data1, 4)
#extract all columns except 4th
select(data1, -4)
#extract 1st, 3rd and 4th columns
select(data1, 1,3,4)
#extract all columns ends with s
select(data1, ends_with("s"))
#extract all columns ends with h
select(data1, ends_with("h"))
#extract all columns contains l
select(data1, contains("l"))
#extract all columns from 3 to 5
select(data1,c(3:5))
#extract all rows where species =setosa
filter(data1, Species=="setosa")
#find median of 1st column
summarise(data1, median=median(Sepal.Length))
#find maximum of 2nd column
summarise(data1,max=max(Sepal.Width))
#find minimum of 3rd column
summarise(data1,min=min(Petal.Length))
#find mean of 4th column
summarise(data1,mean=mean(Petal.Width))

data1%>% select(Sepal.Length, Petal.Length, Species) %>%
  filter(Species=="setosa"&Petal.Length>1.4&Sepal.Length>3.5)

data1 %>% filter(Species=="setosa"&Petal.Length>1.4&Sepal.Length>3.5) %>%
  mutate(SL=Sepal.Width) %>%
  select(Sepal.Length, Petal.Length, Species,SL)


#extract Sepal.Width, Petal.Width and Species from iris dataset and from these columns extract rows where Species is versicolor, Sepal.Width is less than 3.0 and Petal.Width is less than 4.0
data1 %>% select(Sepal.Width, Petal.Width, Species) %>%
  filter(Species == "versicolor"& Sepal.Width<3.0 & Petal.Width<4.0)

#extract rows from iris dataset where species is versicolor, Sepal.Width is less than 3.0 and Petal.Width is less than 4.0. add one more column/ variable. Extract newly added variable, Sepal.Width, Petal.Width and Species

data1 %>% filter(Species=="versicolor" & Sepal.Width<3.0 & Petal.Width<4.0) %>%
  mutate(PW=Petal.Width) %>%
  select(PW, Sepal.Width, Petal.Width, Species)


#summarise

data1 %>% filter(Species == "setosa" & Petal.Length>1.4 & Sepal.Width>3.5) %>%
  mutate(SL=Sepal.Width) %>%
  select(Sepal.Length, Petal.Length, Species, SL) %>%
  summarise(mean(Sepal.Length),max=max(SL))
