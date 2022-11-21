##CONDITIONAL STATEMNETS

#If statments -->

#if (condition){
#body
#} 

x=3
if(x<0)
{
  print("x is negative number")
}

##suppose you are given the following variables first variable is medium and it contains the information about the social website and the second variable is num_views. 
#the actual number of views the particular medium had on the last day of your recordings of social profile views .
#code an if statement that prints "YOU ARE POPULAR" if the num_views variable exceeds 15.   

Medium=c('FACEBOOK','LINKDIN','INSTAGRAM','YOUTUBE')
num_variable=c(12,13,15,16,)

if(num_variable>=15)
{
  print("you ARE POPULAR")
}

#x=3
x=readline("ENTER A Number:")
x=as.integer(x)
if(x<0)
{
  print("x is a negative number")
}else{
  print("x is either zero or positive number")
}
#ELSE IF
#x=3
x=readline("ENTER A Number:")
x=as.integer(x)
if(x<0)
{
  print("x is a negative number")
}else if(x>0){
  print("x is either zero or positive number")
}else{
  print("x is zero")
}

x=readline("ENTER A Number:")
x=as.integer(x)
if(x%%2==0){
  print("Divisble by 3")
}else if(x%%3==0){
  print("Divisble by 5")
}else if(x%%2&&x%%3==0){
  print("Divisible by both 2and 3")
}else{
  print("Not divisible by 2 or 3")
}

##USING UR CODE FROM THE PREV QSTN TRY 
#1- r prints out showing facebook information 
#if median is equal to facebook
#if median is equal to LinkedIn showing LinkedIn information
#otherwise no information
#2- if num_views is between 15 and 10 then it will print Ur no. of views is average otherwise try to be more visible

Medium=readline("ENTER Medium:")
num_views=readline("Enter the number of views: ")
num_views=as.integer(num_views)

if(Medium=="FACEBOOK"){
  print("showing information of facebook")
}else if(Medium=="LINKDIN"){
  print("showing info of LINKDIN")
}else{
  print(" no information available")
}
if(num_views>15){
  print("u r popular")
}else if(num_views>10 & num_views<=15){
  print("number of views is average")
}else{ 
  print("try to be more visible")
}

##generate a social media score SMS base don the valued LI depending
#on the number of profile views on your linkdin
#and fb denoting number of profile views on facebook profile
#if both li and fb are 15 or high set SMS=double the sum of LI AND FB
#if both li and fb are strictly below 10 set SMS=half the sum of LI and FB
#in all other cases et SMS= LI+FB and print resulting SMS values

LI=readline("Enter the number of views ON LI: ")
LI=as.integer(LI)
FB=readline("Enter the number of views ON FB: ")
FB=as.integer(FB)
if (LI>=15 && FB>=15){
  cat("SMS",(LI+FB)*2)
}else if (LI<10 && FB<10){
  cat("SMS",(LI+FB)/2)
}else{
  cat("SMS",(LI+FB))
}


##write a program to check if a number is even positive,odd positive number,zero,negative

a=readline



