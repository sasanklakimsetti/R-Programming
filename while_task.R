#write a program to check whether a no. is a palindrome or not
n<-as.integer(readline("Enter number: "))
rev<-0
m<-n
while(n>0){
  r=n%%10
  rev=rev*10+r
  n=n%/%10    #quotient from division of first operand with second
  if(n==0) break
}
if(rev==m) {
  print("true")
}else {
  print("false")
}

#write a program to check whether a no. is armstrong or not
k<-as.integer(readline("Enter number: "))
cnt<-0
l<-k
sum<-0
while(l>0){
  r=l%%10
  cnt=cnt+1
  l=l%/%10
}
m<-k
print(cnt)
i<-0
while(i<cnt){
  r=m%%10
  sum<-sum+r^cnt
  m=floor(m/10)
  i=i+1
}
s<-k
if(s==sum) {
  print("armstrong")
} else{
  print("not an armstrong")
}

