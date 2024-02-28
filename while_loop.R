#WHILE LOOP
#syntax: while(condition){
#           statement
#        }


v<-"Hello"
cnt<-3
while(cnt<=10){
  print(v)
  cnt<-cnt+1
}

#while loop and use break
cnt<-10
while(cnt>=0){
  print(cnt)
  cnt<-cnt-1
  if(cnt==5) break
}

#while loop and use next
cn<-0
while(cn<10){
  cn<-cn+1
  if(cn==5){
    next
  }
  print(cn)
}

n=as.numeric(readline("Enter a value: "))
cat("numbers from ",n," to 0")
while(n>=0){
  print(n)
  n=n-1
}

n1=as.numeric(readline("enter a value: "))
cat("numbers from ",n1,"to 50\n")
while(n1>=50){
  print(n1)
  n1=n1-1
}

n2<-as.numeric(readline("enter a value: "))
cat("numbers from ",n2," to -10\n")
while(n2>=-10){
  print(n2)
  n2=n2-1
}

#while loop with if-else
n3<-as.numeric(readline("enter a value: "))
cat("even numbers upto ",n3)
i<-0
while(i<=n3){
  if(i%%2==0) print(i)
  i=i+1
}
paste("odd numbers upto ",n3)
j<-0
while(j<=n3){
  if(j%%2!=0) print(j)
  j=j+1
}
k<-0
while(k<=n3){
  if(k%%2==0){
    print(paste(k," is even "))
  }else{
    print(paste(k," is odd"))
  }
  k=k+1
}


#write a program to display odd no's b/w 100 to 1
a<-100
while(a>0){
  if(a%%2!=0){
    print(a)
  }
  a=a-1
}

#write a program to display even numbers b/w 1 to 1000
b<-1
while(b<1000){
  if(b%%2==0){
    print(b)
  }
  b=b+1
}

