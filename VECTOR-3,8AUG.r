#VECTOR
v1=c(4,5,6,7)
v1
class(v1)
typeof(v1)

#INTEGER
v2=c(4L,5L,6L,7L)
class(v2)
typeof(v2)

#NUMERIC FULL LIST
v3=c(1:100)
v3

#CHAR
v4=c('a','b','c','d')
v4
class(v4)
typeof(v4)

#LOGIC
v5=c(a&b)
v5

#SEQUENCE
v6=seq(1,4)  #from to seq
v6
v7=seq(1,70,by=4)  #increment of the sequence
v7
v8=seq.int(1,50,length.out=10)
v8
typeof(v8)

v9=seq(1,50,along.with=c(5,10,17,45)) #take the length from the 
                                     #length of this argument
v9

v10=seq(a,z,along.with=c("c","d","e","f")) #take the length from the 
#length of this argument
v10

v3[2]
v3[2:5]
v3[c(3,8,10)]
v3[v3>50]
v4=NA #non existing 
v4
v3[1:100]
v3[v3>5]=1
v3

sort(v2)
?sort

#create a vector of strings with 5 elements than modify the element at index position 3 to programming:
v11=c('i','am','nice','cpp','code')
v11
v11[3]='programming'
v11

#create a vector of blood group
data=c('A','B','O','AB')
data
bloodgrp=factor(data)
bloodgrp
is.factor(bloodgrp)