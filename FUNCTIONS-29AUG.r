#FUNCTION

function(arguments){
  statements
}  #inbuilt command

#SUM
sum(4:6)
?sum
v=c(4,5,6,7,8,9,NA)  #NA means one of the number is missing, if not specified output will be NA  
sum(v)
sum(v,na.rm = TRUE) #na.rm means removing NA number and giving SUM of remaining number

mean(v,na.rm = TRUE)   #MEAN
max(v,na.rm = TRUE)   #MAX
min(v,na.rm = TRUE)    #MIN
sqrt(sum(v,na.rm = TRUE))  #SQRT(SUM(V))
sqrt(v)                   #SQRT      
median(v,na.rm = TRUE)   #MEDIAN


evenodd=function(x){   ##first execute it before calling the function
  if(x%%2==0)
    return("even")
  else
    return("odd")
}
x=as.integer(readline("Enter the number:"))
evenodd(x)
evenodd(15)

##WAF to calculate the area of a circle

AREAofCIRCLE=function(r){
    return(pi*r*r)
}
r=as.integer(readline("Enter the radius:"))
AREAofCIRCLE(r)

##WAF to calculate the area and parimeter of a rectangle
APORect=function(l,w){
  area=l*w
  parimeter=2*(l+w)
  print(area)
  print(parimeter)
}
APORect(4,5)
APORect=function(l,w){
  area=l*w
  parimeter=2*(l+w)
  result=list("Area"=area,"Perimeter"=parimeter)
  print(result)
  }
APORect(4,5)


##WAP to create a function to check wether a number is armstrong number or not 
ARMSTRONG=function(abc){
  if(abc==(a^3)+(b^3)+(c^3))
    return("it is a armstrong number")
  else
    return("not a armstrong number")
}

num = as.integer(readline("Enter a number: "))

sum = 0

temp = num
while(temp > 0) {
  digit = temp %% 10
  sum = sum + (digit ^ 3)
  temp = floor(temp / 10)
}

if(num == sum) {
  print(paste(num, "is an Armstrong number"))
} else {
  print(paste(num, "is not an Armstrong number"))
}
ARMSTRONG(215)
ARMSTRONG(1000)

##WAP to create a function to check wether a number is PALINDROME number or not 

n=as.integer(readline("enter the number: "))
palindrome=function(n){
  rev=0
  num=n
  
  while(n>0){
    temp=n%%10
    rev=rev*10+temp
    n=n%/%10
  }
  if(rev==num){
    print(paste("Number",num,"is palidrome"))
  }else{
    print(paste("Number",num,"is not palidrome"))
  }
}

palindrome(n)


##CREATE a function DEMO with three arguments a,b,c .inside the function in sum variable add a+b only
sum=function(a,b,c){
  sum=a+b  #no error because of lazy function
  print(sum)
}
sum(3,4)




