#plots

#barplot() : used to represent data in bar graphs
# syntax: barplot(v, xlab, ylab, main, col, names.arg)
#main- title of the bar plot
#xlab- name for x-axis
#ylab- name for y-axis
#col- color of bars
#names.arg- titles below bars
a<-c(1,4,9,10,12,3)
barplot(a)
barplot(a, main = "temp", xlab="month",ylab="value",col = "lightblue", names.arg=c("Jan","Feb","Mar","Apr","May","Jun"))

x<-c(1:10)
result<-barplot(x, main="Result",xlab="X-axis",ylab = "Y-axis",names.arg=c("Sun","Mon","Tue","Wed","Thu","Fri","Sat","Sun","Mon","Tue"),col = "blue",density = 10,border = "darkblue",cex.names = 2,cex.axis = 3)
# to change the texture of the bar plot, density is used
# to change the color of border, border=color is used
# for character expansion, use cex.names, cex.axis

#to convert a bar plot into horizontal, use horiz=true
result1<-barplot(x, main="Result",xlab="X-axis",ylab = "Y-axis",names.arg=c("Sun","Mon","Tue","Wed","Thu","Fri","Sat","Sun","Mon","Tue"),col = "blue",density = 10,border = "darkblue",cex.names = 2,cex.axis = 3, horiz = TRUE)

z<-matrix(c(222,203,212,200,211,254,265,258), nrow=2, ncol=4)
lt<-barplot(z, main="Matrix",xlab = "Class", names.arg = c("1st","2nd","3rd","4th"), col=c("blue","red"),beside = TRUE)
# beside is used for making plots side by side. otherwise they will be on top of each
legend("topleft",c("c1","c2"),fill = c("blue","red"))


# scatterplot : used to create scatterplots
# syntax: plot()
x1<-c(1:10)
y1<-c(11:20)
plot(x1,y1,main = "Scatter plot",xlab = "X-axis",ylab = "Y-axis",col="blue",cex=2)

x2 <- c(1:5)
y2 <- c(6:10)
plot(x2, y2)
points(x2, y2, col = "green", cex = 2)  # to compare two scatter plots, we will use points function
plot(x2,y2,type = "s") #staircase will be represented
plot(x2,y2,type="p") #circle
plot(x2,y2,type="o")  #circle along with trendline
plot(x2,y2,type="n") #empty graph
# type tells what the graph element to represent data

v<-c(13,22,28,7,31)
w<-c(11,13,32,6,35)
lines(v,type = "o",col="blue")
lines(w,type="o",col="green")
# to compare two scatter plots with line, lines function will be used. there should be two vectors to compare. run the chunks to understand better



#create 3 numeric vectors, represent these vectors in a line graph
#assign the title according to your choice and also label "x-axis" and "y-axis"
# for 1st vector, the type should be "s" and color green
# for 2nd vector, the type should be "o" and color blue
# for 3rd vector, the type should be "s" and color black
# compare all line graphs
a1<-c(1:10)
b1<-c(11:20)
c1<-c(21:30)
plot(a1, main="Vector 1",xlab="X-axis", ylab="Y-axis", type="n")
#plot(b1, main="Vector 2",xlab="X-axis", ylab="Y-axis")
#plot(c1, main="Vector 3",xlab="X-axis", ylab="Y-axis")
lines(a1,type="s",col="green")
lines(b1,type="o",col="blue")
lines(c1,type="s",col="black")


# create a matrix and represent matrix as scatter plot
# create two vectors and represent these vectors as scatter plot
# create two more vectors and represent these vectors as scatter plot
# compare the scatter plots
a2<-matrix(c(1:10),nrow = 2,ncol=5)
plot(a2,col="black")
b2<-c(11:20)
c2<-c(21:30)
plot(b2,c2,col="blue")
points(b2,c2,col="violet",cex=2)
d2<-c(31:40)
e2<-c(41:50)
plot(d2,e2,col="green")
points(d2,e2,col="violet",cex=2)
#run chunks for better understanding