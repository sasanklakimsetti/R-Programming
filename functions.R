#functions
#collection of statements that are organised together to perform specific task.
#keyword: function

#function with an argument
new.function<-function(a){
  for(i in 1:a){
    b<-i^2
    print(b)
  }
}
new.function(6)

#function without an argument
new.function1<-function(){
  for(i in 1:5){
    print(i^2)
  }
}
new.function1()

#take two inputs from user and perform function
a<-as.integer(readline("Enter a: "))
b<-as.integer(readline("Enter b: "))
add<-function(a,b){
  print(a+b)
}
sub<-function(a,b){
  print(a-b)
}
div<-function(a,b,c){
  print(a/b)
}
mod<-function(a,b){
  print(a%%b)
}
add(a,b)
sub(a,b)
div(a,b)
mod(a,b)

mul<-function(a,b,c){
  print(a*b*c)
}
c<-as.integer(readline("Enter c: "))
d<-as.integer(readline("Enter d: "))
e<-as.integer(readline("Enter e: "))
mul(c,d,e)


#calling the functions
#by position
#by name

#by position
fun<-function(a,b,c){
  result<-a*b+c
  print(result)
}
fun(10,20,30)

#by name
fun1<-function(x,y,z){
  result=x+y+z
  print(result)
}
fun1(x=50,y=10,z=20)      #arguments name should be same as parameters name

#difference between by position and by name is that
#in by position, whatever the order the arguments are in, in the same order will be assigned to parameters. so if we change the order then the assignment will get changed
fun(10,20,30)
fun(10,30,20)
#output will not be same for both

#in by name, we can change the order of names and they will be assigned as per their name. whatever the order is, since we are calling by assigning their name, there will not be any disparity in the output though the order gets changed
#example
fun1(x=50,y=10,z=20)
fun1(x=50,z=10,y=20)
#output will be same for both

#default arguments
fun2<-function(a=60,b=70){
  result=a*b
  print(result)
}
fun2()

fun3<-function(x=10,y){
  result=x+y
  print(result)
}
fun3(,20)

#calling by both position and by name
fun(a=10,20,b=30)  #will consider c as 20
fun(a=10,c=30,20)  #will consider c as 30

new.fun1<-function(a,b){
  print(a^2)
  print(a)
  print(b)
}
new.fun1(6)
