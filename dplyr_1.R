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

