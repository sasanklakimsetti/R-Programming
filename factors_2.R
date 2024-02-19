a<-c("North","East","South","West","East","West")
b<-factor(a)
#add three more levels
levels(b)<-c(levels(b),"True","False","Bye")
b
b[2]<-"True"
b[3]<-"False"
b[6]<-"Bye"
b
#change the order of levels 
b<-factor(b,levels=c("North","South","East","West","True","False","Bye"))
b
#generating factor levels
b<-gl(3,5,labels = c("R","DBMS","PYTHON"))
b


b[c(-2,-4,-6)]
