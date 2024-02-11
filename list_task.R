#create a list containing character, integer, logical, complex and numeric
#name a list
#accessing elements of list by indexing, naming and using dollar sign
#access 3rd element of the 3rd subset
#access 1st element of the 2nd subset
#access 2nd element of the 1st subset
#create 3 lists and merge them
#modify 2nd element of the 2nd subset
#modify 1st element of the 1st subset
#modify 3rd element of the 3rd subset
#convert list into vectors
#delete 1st subset of a list

list1<-list(c('A','B','C'),c(1,2,3),c(TRUE,FALSE,TRUE),c(5+3i,1+2i,3+5i),c(1.1,2.2,3.3))
names(list1)<-c("character", "integer", "logical", "complex", "numeric")
print(list1[1])
print(list1[2])
print(list1[3])
print(list1[4])
print(list1[5])
print(list1["character"])
print(list1["integer"])
print(list1["logical"])
print(list1["complex"])
print(list1["numeric"])
print(list1$character)
print(list1$integer)
print(list1$logical)
print(list1$complex)
print(list1$numeric)

print(list1[[3]][[3]])
print(list1[[2]][[1]])
print(list1[[1]][[2]])
list2<-list(c('A','B','a'),c(1,2,3),c(2.1,5.2,3.1))
list3<-list(c(2+2i,1+5i,5-5i),c(TRUE,FALSE,TRUE))
list4<-list(c('C','D','E'),c("R","Programming","hello"))
list5<-c(list2,list3,list4)
list5
print(list5[[2]][[2]])
print(list5[[1]][[1]])
print(list5[[3]][[3]])
vector1<-unlist(list5)
print(vector1)
list5[[1]]=NULL
print(list5)
