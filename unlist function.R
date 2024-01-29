#unlist()
#it is used to convert lists into vectors
list1<-list(1:5)
list2<-list(6:9)
vector1<-unlist(list1)    #converting a list into vector using unlist() function
vector2<-unlist(list2)    #converting a list into vector using unlist() function
print(vector1)
print(vector2)

#if we convert a list containing different datatypes into a vector then that vector will have all the values which has greater space inside the list
list3<-list(1,"Hi",2.2)
vector3<-unlist(list3)
print(vector3)
