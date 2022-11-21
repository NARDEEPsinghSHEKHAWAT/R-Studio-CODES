v1=c(5,8,9,11) 
for(i in v1) #here vector v1 is alredy specified so  for loop will work for v1=C(5,8,9,11)
{
  print(i)
}

for(i in 1:5) #i=1, i<=5,i++ here 1:5 means loop will exceute for values from 1 to 5 with increment 
{
  print(i)
}

##create a vector V which ill show days of all the week using for loop

v2=c('monday','tuesday','wed','thur','fri','sat','sun')
for (i in v2)
{
  print (i)
}



##write a program to check wheteher the number present in the vector are prime or not

v3=c(2,3,4,5,7,8)
for(i in v3)
{
  j=2
  while (j<=i-1)  #it means it will check all the 1 less than the number that we taken in the loop exmple 
  {
    if(i%%j)
    {
      print("NOT a prime")
      i=i+1
      break
    }else{
      print("a prime number")
      i=i+1
      break
    }
  }
}

n=as.integer(readline("Enter a number: "))

i=2
while (i < n)
{
  if (n %% i == 0)
  {
    print("non-prime")
    i =i+ 1
    break
  }else{
    print("prime")
    i =i+ 1
    break
  }
}



#WHILE LOOP

val=1
while(val<=5)  #first value is 1 than in while loop it will chck the condition as it is true than in print statement it will print acc to the given stat
{
  print(val)
  val=val+1
}


#REPEAT

#repeat{
#        statement
#     }
#if (condition) {
#  break
#}
#}




#WAC find the factorial of the given number 
n=as.integer(readline("Enter a number: "))
fact=1
    for(i in 1:n){
      fact = fact * i
      }
  paste("factorial of the number is: ",fact)
  
  
#
  
