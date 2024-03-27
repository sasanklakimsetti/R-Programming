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


#exponential functions
print(exp(10))

#logarithmic functions
print(log2(10))

#string functions
str="Hello all"
#substring
print(substr(str,1,5))   #print(substr(str,start,end))
str2="Come to my room"
print(substr(str2,1,4))

#find no.of characters in the string
str3<-"This is me"
print(nchar(str3))
str4<-"Students complete your task as soon as possible"
print(nchar(str4))
print(substr(str4,27,37))

#grep() : used to match the pattern from the given string
x<-c("GFG","gfg","xyz","XYZ")
grep("gfg",x)
grep("GFG",x)
grep("xyz",x,ignore.case=FALSE)   #it is case-sensitive
grep("XYZ",x,ignore.case=TRUE)    #it is non case-sensitive
grep("gfg",x,value=T)      #value=T means we want value so it will give value only and not index
grep("gfg",x,value=F)      #value=F means we don't value so it will give the index and not the value

y<-"Welcome to LPU"
grep("to",y)   # it will give only 1 as index as it is a single string whereas the above one is the vector so it will give different index for different string

z<-c("ABC","abc","DEF","def")
grep("DEF",z)
grep("DEF",z,ignore.case=TRUE)
grep("abc",z,ignore.case=FALSE)
grep("abc",z,ignore.case=TRUE)
grep("ABC",z,value=T)
grep("ABC",z,value=F)

#minimum occurence of string
grep("b+",c("ab+","bda2","+ccaa","ad"),value=TRUE)  #returns strings where b is there  
#0 or maximum occurence of string
grep("b*",c("ab+","bda2","+ccaa","ad"),value=TRUE)  #returns value of strings with 0 or maximum occurence of  matched string
grep("b*",c("ab+","bda2","+ccaa","ad"),value=F)   #returns positions of the matched strings

#replace a string with another string in the first occurence
x1<-"R-Programming"
print(sub("R","C",x1))
#replace "r" with "c"
print(sub("r","c",x1))
#replace "n" with "M"
print(sub("n","M",x1))

x2<-"Hello world HELLO"
sub("ell","how",x2,ignore.case=TRUE)
sub("HELL","hai",x2,ignore.case=FALSE)
sub("HELL","hai",x2,ignore.case=TRUE)

#strsplit()
x3<-"Hello everyone"
print(strsplit(x3,"o"))  #wherever the character encounters the string will get splitted there and the rest will become another string and that charcater will not be there in any string
print(strsplit(x3,"ll"))

string_date<-c("2-07-2020","5-05-2020","2-06-2020")
print(strsplit(string_date,"-"))
print(strsplit(string_date,"0"))

x4<-"Hello2World"
res<-strsplit(x4,split="[0-9]+")   #wherever the numbers from 0-9 occurs then the string will get splitted
print(res)
  
#tolower()
#toupper()
x5<-"AbCdEfG"
x5<-tolower(x5)
print(x5)
x5<-toupper(x5)
print(x5)

