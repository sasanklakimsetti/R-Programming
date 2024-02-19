#control statements
#if, if else, else if ladder, nested if
#loops: while, do while
#switch

a<-c(1:10)
a
if(1%in%a)
  cat("1 is present in a")
if(2%in%a)
  cat("2 is present in a")
if(3%in%a)
  cat("2 is present in a")
if(4%in%a)
  cat("2 is present in a")
if(5%in%a)
  cat("2 is present in a")


#if else
if(11%in%a){
  cat("11 is present in a")
}else {
  cat("11 is not present in a")
}
if(12%in%a){
  cat("12 is present in a")
}else{ 
  cat("12 is not present in a")
}
if(13%in%a){
  cat("13 is present in a")
}else {
  cat("13 is not present in a")
}
if(10%in%a){
  cat("10 is present in a")
}else {
  cat("10 is not present in a")
}
if(9%in%a){
  cat("9 is present in a")
}else {
  cat("9 is not present in a")
}


#else if ladder
b<-10
if(b==10){
  if(b<11){
    cat("10 is less than 11")
  }else{
    cat("10 is greater than 11")
  }
}else{
  cat(b," not equal to 10")
}

