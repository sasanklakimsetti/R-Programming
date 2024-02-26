#loops
#for, while, repeat


#repeat
v<-c("Hello","loop")
cnt<-2
repeat{
  print(v)
  cnt<-cnt+1  #incrementing
  if(cnt>5){
    break   #terminates the loop
  }
}
#this is like a do while loop in other programming languages,
#it executes the statement first and then checks for the condition

#give 10 examples for repeat loop

#print first 10 numbers
a<-1
repeat{
  print(a)
  a<-a+1
  if(a>10) break
}

#print first numbers in rev order
b<-10
repeat{
  print(b)
  b<-b-1
  if(b==0) break
}

#print even numbers upto 10
c<-0
repeat{
  print(c)
  c<-c+2
  if(c>10) break
}

#print odd numbers upto 10
d<-1
repeat{
  print(d)
  d<-d+2
  if(d>10) break
}

#printing sum of first 100 natural numbers
e<-1
sum<-0
repeat{
  sum=sum+e
  e=e+1
  if(e>100) break
}
print(sum)

#printing sum of even numbers upto 100
f<-0
sum1<-0
repeat{
  if(f%%2==0) sum1=sum1+f
  f=f+1
  if(f>100) break
}
print(sum1)

#printing sum of odd numbers upto 100
g<-0
sum2<-0
repeat{
  if(g%%2!=0) sum2=sum2+g
  g=g+1
  if(g>100) break
}
print(sum2)

#printing product of first 100 natural numbers
h<-1
pro<-1
repeat{
  pro=pro*h
  h=h+1
  if(h>100) break
}
print(pro)

#printing product of first 100 whole numbers
i<-0
repeat{
  pro=pro*i
  i=i+1
  if(i>100) break
}
print(pro)

#printing alphabets of uppercase
j<-LETTERS[1:26]
count<-1
repeat{
  print(LETTERS[[count]])
  count=count+1
  if(count>26) break
}

#printing alphabets of lowercase
k<-letters[1:26]
counts<-1
repeat{
  print(letters[[counts]])
  counts<-counts+1
  if(counts==27) break
}


#while loop
#syntax: while(condition){
#           statement
#        }

