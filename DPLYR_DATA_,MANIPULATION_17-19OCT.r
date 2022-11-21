install.packages("dplyr")
library(dplyr)
?lag
##BASE R FUNC V/S DPLYR V/S SQL FUNC
##

data22=read.csv(file.choose())
View(data22)
str(data22)
summary(data22)

##SELECT n random rows
d1=sample_n(data22,5)
View(d1)

##SELECT RANDOM ROWS AND FIND % of total rows from the table 
d2=sample_frac(data22,0.1)  ###will print 10% rows
View(d2)

##REMOVE DUPLICATE ROWS
d3=distinct(data22)
View(d3)

d4=distinct(data22,Index)  ##no duplicate index are printed
View(d4)
d5=distinct(data22,Index,.keep_all = TRUE)  ##full table will be printed without duplicate in INDEX column 
View(d5)

##REMOVE DUPLICATE ROWS BASED ON MULTIPLE COLUMNS
d6=distinct(data22,Index,Y2010)  ##both the columns are considered while checking duplicacy
View(d6)


##SELECT SPECIFIED COLUMN/S
d7=select(data22,Index)#,State)
View(d7)

d8=select(data22,State:Y2010) ##SELECT COLUMNS FROM STATE TILL Y2010 ##CASE SENSITIVE IN NAME OF COLUMNS
View(d8)

d9=select(data22,-State) ##DROP COLUMN "STATE"
View(d9)

d10=select(data22,-State,-Index) ##DROP MULTIPLE COLUMNS
##d10=select(data22,-c(State:Y2010) ##DROP MULTIPLE COLUMNS FROM STATE TILL Y2010
View(d10)

##SELECTING AND DROPING THE VARIABLES START WITH "Y"

d11=select(data22,starts_with("Y"))  ##SELECTION
View(d11)

d12=select(data22,-starts_with("y"))  ##DROPING
View(d12)

##REMAINING FUNCTIONS UNDER SELECT
ends_with()
num_range()
matches()
one_of()
everything()

##SELECT THE VARIABLE THAT CONTAIN "I" IN THERE NAMES
d14=select(data22,contains("I"))
View(d14)

d15=select(data22,State,everything())
View(d15)

##RENAME COLUMNS
d16=rename(data22,Column1=Index)
View(d16)   

##FILTERING ROWS
d17=filter(data22,Index=="A")
View(d17)

d18=filter(data22,Index%in%c("A","C"))  ##FILTER MULTIPLE ROWS
View(d18)

##SELECT DATA WHERE INDEX IS A &C AND INCOME IS >1.3MILLION YEAR 2002
View(data22)
d19=filter(data22,Index%in%c("A","C")&Y2002>=1300000)
View(d19)
d20=filter(data22,Index%in%c("A","C")|Y2002>=1300000)
View(d20)


d21=filter(data22,!Index%in%c("A","C"))  ##ALL WILL BE PRINTED EXCEPT A & C
View(d21)


##PRINT THE RECORDS WHER IN COLUMN STATE CONTAINS "Ar" IN THERE NAME
d22=filter(data22,grepl("Ar",State))  
View(d22)

##SUMMARISE FUNCTION
##CALCULATE MEAN AND MEDIAN OF YEAR 2002

d22=summarise(data22,mean(Y2002))
#d22=summarise(data22,Y2002_MEAN=mean(Y2002))  WITH APPROPRIATE NAME
d22

##CALCULATE THE MEAN OF VARIABLE Y2005 AND Y2011 AND GIVE APPROPRIATE 
##NAMES AS WELL
d22=summarise(data22,Y2005_MEAN=mean(Y2005),Y2011_MEDIAN=median(Y2011))
View(d22)

##

summarise_at(data22,vars(Y2005,Y2011),funs(n(),mean,median))
summarise_at(data22,vars(Y2005,Y2011),list(N=~n(),Mean=mean,Median=median))
summarise_at(data22,vars(Y2005,Y2011),list(~n(),~mean(.),~median(.)))  ## '.'dot operator is used to include all the values
summarise_if(data22,is.numeric,funs(n(),mean,median))
summarise_all(data22["Index"],funs(nlevels(.),nmiss=sum(is.na(.))))  ## '.'dot operator is used to include all the values

##ARRANGE THE DATA BY THE INDEX VARIABLE AND YEAR 2011

d23=arrange(data22,Index,Y2011)
#d23=data22%>%arrange(Index,Y2011)
View(d23)

##sort the variable INDEX in desc order and year 2011 by asc

d24=arrange(data22,desc(Index),Y2011)
d24

##select 10 random observation of the  variables index and state from the dataframe data 
d25=sample_n(select(data22,Index,State),10)
#d25=data%>%select(Index,State)%>%sample_n(10)  ##USING PIPE OPERATOR
View(d25)
?group_by

##We are grouping mean and median by specific year i.e. Y2011-12 
d26=summarise_at(group_by(data22,Index),vars(Y2011,Y2012),list(~n(),~mean(.),~median(.)))
View(d26)

d26=data22%>%group_by(Index)%>%summarise_at(vars(Y2011,Y2012),list(~n(),~mean(.),~median(.)))
## above is by pipe method


##filter the data within categorical variable
d27=data22%>%filter(Index%in%c("A","C","I"))%>%group_by(Index)%>%do(head(.,2)) ##Filtering
View(d27)   ## '.'dot operator is used to include all the values


##CALCULATE THE MAX VALUE OF THE VARIABLE Y2015 BY VAR INDEX
d28=data22%>%group_by(Index)%>%summarise_at(vars(Y2015),list(~n(),~max(.)))
View(d28)
d29=data22%>%group_by(Index)%>%summarise_at(vars(Y2015),funs(n(),max))
View(d29)


#slice(data22,3)


##CALCULATE THE MEAN OF THE VARIABLE OF Y2015-14 BY VAR INDEX THAN 
##SORT THE RESULT BY CALCULATED MEAN VARIABLE Y2015 

d30=data22%>%group_by(Index)%>%summarise_at(vars(Y2014,Y2015),funs(n(),mean))
View(d30)
d30=data22%>%sort()%>%summarise_at(vars(Y2014,Y2015),funs(n(),mean))
View(d30)

##MUTATE  i.e. adding new column with specific expression 
d31=mutate(data22,new=(Y2015/Y2014))
View(d31)

d32=mutate_if(data22,is.numeric,funs("new"=(.*1000)))   ## '.'dot operator is used to include all the values
View(d32)  ##index contains non numeric value so it cannot be multiplied by index 


d33=mutate_at(data22,vars(Y2008,Y2009),funs(Rank=min_rank(.)))
d33=mutate_at(data22,vars(Y2008,Y2009),funs(Rank=min_rank(desc(.)))) ##ranking in desc order

View(d33)


##SELECT THE STATE THAT GENRATES THE HIGHEST INCOME AMONG VAR INDEX in Y2015

d34=data22%>%mutate((Max=Y2015)%>%select(Y2015,Max))
View(d34)


df1=data.frame(ID=c(1,2,3,4,5),
               w=c('a','b','c','d','e'),
               x=c(1,2,3,0,4),
               y=letters[1:5])

df2=data.frame(ID1=c(1,7,3,6,8),
               a=c('z','b','k','d','l'),
               b=c(1,2,3,0,4),
               c=letters[2:6])

d35=inner_join(df1,df2,by=c("ID"="ID1"))
View(d35)

#create a data frame 
#1.which contains all the columns and first 20 rows of the mtcars datasets
#2.create another data frame which also contains all columns but 10-32 rows of the mtcars datset
#3.select the unique rows that are common to both the data frames
#4.select the rows that appear in first table but not in the second table
#5.select the max value in each row of the variable Y2012,13,14,15


d36=data22%>%rowwise()%>%mutate(Max=max(Y2012,Y2013,Y2014,Y2015))%>%select(Y2012,Y2013,Y2014,Y2015,Max)
View(d36)

df=c(-10,2,NA)
if_else(df<0,"negative","positive",missing="data missing")


##CREATE A NEW VAR USING IF ELSE IF VALUE IS <5 ADD 1 TO IT IF VALUE >=5 ADD 2 TO IT OTHERWISE 0
df3=data.frame(x=c(1,5,7,8,-10,NA))
df3%>%mutate(new=if_else(x<5,x+1,x+2,0))

##CREATE A DATA FRAME WITH A COLUMN Y WHICH CONTAINS RANDOM VALUES FROM 1-5AND MISSING VALUES AS WELL 
##CREATE A NEW VARAIBLE "newvar" WHICH WWILL PRINT "i am missing" IF DATA IS MISSING "i m 2" if data is 2 "i m 3" if data 3  otherwise "others"
df4=data.frame(y=c(1:5,NA))
df4
df4%>%mutate(newvar=if_else(df=0,"i am missing",df=2,"i am 2",df=3,"i am 3",df=c(1,4),"others"))
ifelse(df=0,"i am missing",df=2,"i am 2",df=3,"i am 3",df=c(1,4),"others")
