#factor
#create a vector of blood group
data=c('A','B','O','AB')
data
bloodgrp=factor(data)
bloodgrp
is.factor(bloodgrp)

#create a factor of grade scored by 10 students in a class and print the or exccess the  grade of student number 5:

data=c('A','B','C','O','O','B','B','O','D','A')
GRADE=factor(data)
GRADE #default levels are set
GRADE1=factor(GRADE,levels = c('O','A','B','C','D','E','F'))  #changing levels acc to the use 
GRADE1
GRADE1[5]
GRADE1=factor(GRADE,levels = c('O','A','B','C','D','E','F'),order=TRUE)  #changing levels acc to the use and setting greater smaller order
GRADE1
summary(GRADE1)

#in built datasheet with example in Rstudio

View(mtcars)
str(mtcars)
mtcars$gear #specific column data

mtcars$am=as.factor(mtcars$am) #adding levels in column 'am'



str(mtcars)
