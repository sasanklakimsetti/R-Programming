#list
#contains elements of different data types
#created using list() function
a<-c(1,2,3,4)
b<-c("Hello","Hi")
c<-c(TRUE,FALSE)
d<-c(10.5,11.5,2.5)
e<-list(a,b,c,d)   #list
e
list1<-list(c("Sasank","Hello"),c(10,15),TRUE,1.5)  #if we use a c function in the list declaration then it will be seperate vector inside the list
list1

#names() function is used for naming the list
list2<-list(c("Rishith","Karthikeya"),c(10,8),list("B.Tech","B.Tech"))  #nested lists  #c() is a vector inside the list and list() is a another list inside the list
list2
names(list2)<-c("Student","Marks","Courses")
list2        #it is like the column names in excel

#accessing a list can be done in two ways
#indexing
#names

#accessing by indexing
#accessing  the vector inside the list
v1<-list2[[1]]   #will access and store the first index of the list into a vector
v1
v1[[1]]  #will access the first index of the vector v1 i.e. first index of the first index of list2
v1[[2]]
#accessing the nested list
nested_list<-list2[[3]]
nested_list[[1]]
nested_list[[2]]

#accessing the nested list without creating a new list 
list2[[3]][[2]]    #accessing the 2nd element of the nested list
list2[[1]][[2]]    #accessing the 2nd element of the vector inside the list

print(list2[3])  #accessing the whole nested-list by indexing
print(list2[[3]][[1]])  #accessing the particular element in the nested list by indexing

print(list2[1])   #accessing the whole vector inside the list by indexing
print(list2[[1]][[2]])  #accessing the particular element of the vector inside the list by indexing


#accessing by names
print(list2["Marks"])   #accessing the Marks column using the names accessing of the list
print(list2["Courses"])
print(list2$Student)   #using $ sign

list3<-list(c(1,2,3),c("HI","Hello","Hey"),list(10.5,2.5,2.2))
#accessing 3rd element of the 3rd subset of the list
print(list3[[3]][[3]])

#accessing 2nd element of first sublist
print(list3[[1]][[2]])



x<-list(c("Amit","Mani","Mahi","Ankit"),
        c(20,21,22,30),
        c("MBA","MCA","BBA","B.Tech"),
        list("Delhi","Mumbai","Jammu","Kashmir"))
#from the above list, access all elements except MCA
f_list<-lapply(x,function(sublist) subset(sublist, sublist!="MCA"))
f_list
#access 1st and 3rd object of sublist and last object without Jammu
f_list1<-lapply(x, function(sublist) subset(sublist, sublist!="Jammu"))
f_list1
