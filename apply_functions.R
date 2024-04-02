#apply funtions
#1.simple syntax
#2.fast execution

#syntax: apply(x,margin, fun)
#x->input
#margin : 1-row-wise 2-column-wise

mat1<-matrix(c(1:30),nrow=5,ncol=6)  #sum is a inbuilt function and it will be applied row wise in this scenario
result1<-apply(mat1,1,sum)
print(result1)
result2<-apply(mat1,2,sum)   #sum will be applied column wise
print(result2)

mean_res1<-apply(mat1,1,mean)      #row wise mean
print(mean_res1)
mean_res2<-apply(mat1,2,mean)     #column wise mean
print(mean_res2)
median_res1<-apply(mat1,1,median)  #row wise median
print(median_res1)
median_res2<-apply(mat1,2,median) #column wise median
print(median_res2)


mul_res1<- apply(mat1,1,function(mat1) mat1*2)
print(mul_res1)
mul_res2<- apply(mat1,2,function(mat1) mat1*2)
print(mul_res2)

div_res1<-apply(mat1,1,function(mat1) mat1/2)
print(div_res1)
div_res2<-apply(mat1,2,function(mat1) mat1/2)
print(div_res2)

#lapply() : l stands for list
#output will be in the form of list everytime
#syntax: lapply(x,fun)

#create a vector of strings in lower case and then convert them to upper case
str<-c("ab","cd","ef","gh","ij")
new_str<-lapply(str,toupper)
print(new_str)
print(class(new_str))

#create a vector of number and print their square root
num<-c(1:30)
sq<-lapply(num,sqrt)
print(sq)
print(class(sq))

#convert the list into vector
num_vec<-unlist(sq)
print(num_vec)
print(class(num_vec))

#give five examples for apply and lapply functions
a<-matrix(c(1:100),nrow=10,ncol=10)
print(apply(a,1,sum))
print(apply(a,2,sum))
print(apply(a,1,function(a) a-2))
print(apply(a,2,function(a) a-2))
print(apply(a,1,function(a) a*2))
print(apply(a,2,function(a) a*2))
print(apply(a,1,function(a) a/2))
print(apply(a,2,function(a) a/2))

print(lapply(a,sum))
print(lapply(a,sum))
print(lapply(a,function(a) a-2))
print(lapply(a,function(a) a-2))
print(lapply(a,function(a) a*2))
print(lapply(a,function(a) a*2))
print(lapply(a,function(a) a/2))
print(lapply(a,function(a) a/2))

#sapply() : simplified apply function
#syntax: sapply(x,fun, simplify=TRUE)
#simplify = TRUE   default  : will be in the form of input data
#simplify = FALSE : list
a1<-c(1:30)
a1_res<-sapply(a1,sqrt)   #it will be in the form of numeric vector since the simplify=TRUE by default
print(a1_res)
print(class(a1_res))
a1_res2<-sapply(a1,sqrt,simplify=FALSE)  #output will be in the form of list as simplify is marked as false
print(a1_res2)
print(class(a1_res2))

d<-iris
print(d)

#mapply() : multivariate
res3<-mapply(rep,1:4,4:1)  #rep : repeate  
#1 will be repeated 4 times
#2 will be repeated 3 times
print(res3)
