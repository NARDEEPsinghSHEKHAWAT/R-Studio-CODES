#DATA FRAME
#--used to store data in tabular form
#heterogeneous data

emp=data.frame('ID'=c(1:5),'AGE'=c(30,25,24,28,35))
emp

##create a data frame participants containing the id, name, gender,age,game
participants=data.frame('ID'=c(1:5),'NAME'=c('ARUN','RAHUL','PRIYA','KOMAL','ROSHAN'),'AGE'=c(17,18,17,15,17),'GENDER'=c('MALE','MALE','FEMALE','FEMALE','MALE'),'GAMES'=c('RALLY','RACE','LONG JUMP','MUSICAL CHAIR','DANCE'))
participants
str(participants)
summary(participants)

?data.frame
emp

View(emp) #viewing data in tabular form
emp[1] #viewing the very first column 
emp$ID #viewing only ID column(specified by user) 
emp[["ID"]] #viewing only ID column(specified by user)
emp=cbind(emp,Grade=c('A','B','C','D','E')) #new column has been inserted using "cbind"
emp

emp=rbind(emp,c(6,22,'B')) # add new row using "rbind"
emp

##write a code to delete a particular row or column from your data set

emp[-c(1),-c(2)]  #first row and 2 column are deleted 
emp
emp[-c(1,2),] #first and second row are deleted 
emp[,-c(1,2)] #first and second column are deleted

#printing singular or multiple arguments
emp[1,] # printing single row
emp[,2]  # printing single column
emp[c(1,2,3),] #printing multiple rows
emp[,c(1,2,3)] #printing multiple columns


ncol(emp) #number of columns
nrow(emp) #number of rows
length(emp)#length of table

##Combining two different data sets
participants1=data.frame('ID'=c(1:5),'NAME'=c('ARUN','RAHUL','PRIYA','KOMAL','ROSHAN'))
info1 =  cbind(emp,participants1)
info1

detail= data.frame(Course=c(1:5),CGPA=c(8,9,9,9,9))
detail
info1 = cbind(emp,detail)
info1

#create a vector which is a character vector name create another vector also a character vector language and
#create a numeric vector age pass each of the vectors as a argument to create a data frame. access first row and second
#column of The data frame, also print first two rows of the data frame and last column .change the age of element at third row
#and third column to 20. insert two extra rows one extra column course to the data frame remove the middle row
#from the data frame

NAME=c('ARUN','AYUSH','KUMAR','UDAY','BUZMAN')
NAME
LANGUAGE=c('HINDI','ENGLISH','SANSKRIT','TELUGU','BENGALI')
LANGUAGE
AGE=c(20,23,25,25,30)
AGE
STUDENTDETAILS=data.frame(NAME,LANGUAGE,AGE)

STUDENTDETAILS[1,]
STUDENTDETAILS[,2]
STUDENTDETAILS[c(1,2),]
STUDENTDETAILS[,c(2)]
STUDENTDETAILS[3,3]=20

STUDENTDETAILS=rbind(STUDENTDETAILS,c('ASHISH','HINDI',23))

STUDENTDETAILS=rbind(STUDENTDETAILS,c('BHANU','HINDI',22))
STUDENTDETAILS=cbind(STUDENTDETAILS,COURSE=c('ECE','EEE','CSE','AGR','INT','EE','ECE'))
STUDENTDETAILS[-c(5),]
