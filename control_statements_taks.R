# 10 examples for if statement take all inputs from user 
# check even and odd in case of vector by using if else statement 
# check the less than or greater than by using if else statement 
# check the number is present in vector or not by using if else statement 
# 5 e more examples for if else statement 
# check whether the number is positive, negative, or equals to zero by using else if note: take input from user 
# 5 more examples for  else if ladder

#q1
a<-as.integer(readline(prompt = "Enter a number: "))
#1
if(a<10){
  cat(a," is less than 10")
}
#2
if(a<20){
  cat(a," is less than 20")
}
#3
if(a<30){
  cat(a," is less than 30")
}
#4
if(a<40){
  cat(a," is less than 40")
}
#5
if(a<50){
  cat(a," is less than 50")
}
#6
if(a>5){
  cat(a," is greater than 5")
}
#7
if(a<5){
  cat(a," is less than 5")
}
#8
if(a==5){
  cat(a," is equal to 5")
}
#9
if(a!=5){
  cat(a," is not equal to 5")
}
#10
if(a==10){
  cat(a," is equal to 10")
}
#q2
b<-c(1:10)
for(i in 1:10){
  if(b[[i]]%%2==0){
    cat(b[[i]]," is even\n")
  }else{
    cat(b[[i]]," is odd\n")
  }
}
#q3
c<-as.integer(readline(prompt = "Enter a number: "))
if(c>10){
  cat(c," is greater than 10")
}else{
  cat(c," is less than 10")
}

if(c %in% a){
  cat(c," is present in vector a")
}else{
  cat(c," is not present in vector a")
}
#q4
d<-as.integer(readline(prompt = "Enter a number: "))
if(d==10){
  cat(d," is equal to 10")
}else if(d<10){
  cat(d," is less than 10")
}else if(d>10){
  cat(d," is greater than 10")
}else{
  cat(d," is not equal to 10")
}
#q5
e<-as.integer(readline(prompt = "Enter a number: "))
if(a>0){
  cat(e," is positive")
}else if(a<0){
  cat(e," is negative")
}else{
  cat(e," is equal to zero")
}
#q6
f<-as.integer(readline(prompt = "Enter a number: "))
if(f>1){
  if(f>2){
    cat(f," is greater than 1 and 2\n")
    if(f>3){
      cat(f," is greater than 3\n")
    }else{
      cat(f," is not greater than 3\n")
    }
  }else{
    cat(f," is greater than 1 but not greater than 2")
  }
}else{
  cat(f," is not greater than 1")
  if(f<0){
    cat(f," is negative")
  }else if(f==0){
    cat(f," is non-negative and equal to 0")
  }
}
