#next 
#used to skip the matched condition i.e. it is like continue in programming 

a<-1:10
for(val in a){
  if(val==5){   #it will skip 5 and print the rest
    next
  }
  print(val)
}

#break 
#used to terminate the program when the condition matches

a1<-5
while(a1<30){
  print(a1)
  if(a1==10)   #breaks the loop and program when the value becomes 10
    break
  a1=a1+1
}

x<-LETTERS[1:10]     #stores the first 10 alphabets
for(i in x){
  print(i)
}

#print the squares from 1 to 10
for(i in 1:10)  
  print(i^2)

#five examples for next and break

#next
#1
b1<-as.integer(readline("Enter a number: "))
#printing odd numbers upto the asked range
for(i in 0:b1){
  if((i%%2)==0){
    next
  }
  print(i)
}
#2
#printing even numbers upto the asked range
for(i in 0:b1){
  if((i%%2)!=0){
    next
  }
  print(i)
}
#3
#printing the numbers without the given number
for(i in 1:b1){
  if(i==b1){
    next
  }
  print(i)
}
#4
#skipping the number if that number occurs within the given range and printing the count
count1<-0
for(i in 1:b1){
  if(i==b1){
    next
  }
  count1=count1+1
}
print(count1)
#5
#skipping the letter if the no matches and printing other letters
x1<-LETTERS[1:26]
for(i in 1:26){
  if(i==b1){
    next
  }
  print(x1[i])
}

#break
#1
#terminating the program if that number occurs within the given range
for(i in 1:b1){
  if(i==b1)
    break
  print(i)
}
#2
#terminating the program if an even number occurs within the given range
for(i in 0:b1){
  if(i%%2==0){
    break
  }
  print(i)
}
#3
#terminating the program if an odd number occurs within the given range
for(i in 0:b1){
  if(i%%2!=0){
    break
  }
  print(i)
}
#4
#terminating the program if that number occurs within the given range and printing the count
count<-0
for(i in 1:b1){
  if(i==b1){
    break
  }
  count=count+1
}
print(count)
#5
#terminating the program if the no matches and printing the letters upto that
x2<-letters[1:26]   #alphabets in lowercase
for(i in 1:26){
  if(i==b1){
    break
  }
  print(x2[i])
}
