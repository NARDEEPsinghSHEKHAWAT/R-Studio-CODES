#LIST
#1-D HETROGENOUS STRUCTURE


studID=c(1,2,3,4)
studNAME=c('Amrit','Binod','Chinmay','Dheeraj')
numberofstud=4
stud=list(studID,studNAME,numberofstud) #list without titles "basic list"
stud

studdet=list( 'ID'=studID,'NAMES'=studNAME,'Total strength'=numberofstud) #list with details
studdet
studdet$NAMES #accessing NAMES  
studdet[[2]] #accessing direct data "TOP TIER"
studdet[[2]][2] #accessing direct data "LOWER TIER"

#access 4 from ID using Induces
studdet[[1]][4]

studdet$`Total strength`=5
studdet[[1]][5]=5
studdet
studdet$NAMES[5]="kamal"


#write a program to create a studAGE list which contents a vector studAGE studYOB of the total number of students as in the studdet1 list.
#combine studAGE list to studdet1

studAGE=c(18,17,14,15,16)
studar=factor(studAGE)
studar
studYOB=c(2019,2018,2016,2014,2017)
studYOB
studAGELIST=list('AGE'=studAGE,"YOB"=studYOB) 
studAGELIST
studdet1=c(studdet,studAGELIST)
studdet1


#UNLIST -- Converts list into a Vector
##WAP to convert list into vector
studAGE=c(18,17,14,15,16)
studar=factor(studAGE)
studar
studYOB=c(2019,2018,2016,2014,2017)
studYOB
studAGELIST=unlist(studAGE,studYOB) 
studAGELIST

