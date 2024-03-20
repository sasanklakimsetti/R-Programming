#Math functions (in-built functions)

#absolute function : abs(), it gives absolute value
a<- -10
abs(a)
abs(0.5)
#find the absolute values of 10 positive and 10 negative numbers
for (i in -5:4){
  print(abs(i))
  i= i*i
}
#find the absolute value of decimal number
print(abs(-0.21))
print(abs(-0.123))
print(abs(0.21))
print(abs(-0.2123))
print(abs(-0.5213))
print(abs(0.2001))
print(abs(-0.12005))
print(abs(-0.20145))
#take five decimal values from user and find their absolute values
#method 1
for (i in 1:5){
  a<-as.numeric(readline("Enter value: "))
  print(abs(a))
}
#method 2
b<-scan(what=numeric(),n=5)
print(abs(b))

# square root : sqrt()
sqrt(-10)  #gives error
sqrt(10)   #gives the root value
sqrt(abs(-10))

#ceiling() : upper value
ceiling(0.5)
ceiling(0.2)
ceiling(-10.1)

#floor() : lower value
floor(0.5)
floor(0.2)
floor(-10.1)

#take 5 +ve values from user and apply all functions
c<-scan(what=numeric(),n=5)
abs(c)
sqrt(c)
ceiling(c)
floor(c)
#take 5 -ve values from user apply all functions
d<-scan(what=numeric(),n=5)
abs(d)
sqrt(d)
ceiling(d)
floor(d)
#take 5 decimal values from user apply all the functions
e<-scan(what=numeric(),n=5)
abs(e)
sqrt(e)
ceiling(e)
floor(e)

# trunc() : eleminates the decimal part
trunc(0.21)
trunc(0.99)

#round() : round off the decimal number
round(6.1254)
round(6.6254)
round(9.54367, digits=2)
round(9.612,digits=3)
round(9.615,digits=3)

#trignometric functions
tan(0)
sin(90)
cos(90)
