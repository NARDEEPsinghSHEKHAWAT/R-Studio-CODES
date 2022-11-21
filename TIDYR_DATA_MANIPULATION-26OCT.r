install.packages("tidyr")
library(tidyr)
n=10
df=data.frame(S.No=c(1:n),
              G.1=c(23,345,76,212,88,199,72,35,90,265),
              G.2=c(117,89,66,334,90,101,178,233,45,200),
              G.3=c(29,101,239,289,176,320,89,109,199,56))
View(df)

##GATHER
##USED FOR RESHAPING WIDE FORM INTO LONG FORMAT
##MULTIPLE COLUMN INTO SINGLE COLUMN

df1=df%>%gather(Group,Frequency,G.1:G.3)   ##wide data gathered from "df" is collapsed in df1 in long format
View(df1)  ##View both df & df1 and see the difference .. 
             #all the groups are merged under same column named as "GROUP"
summary(df1)
df1=df%>%gather(Group,Frequency,G.1:G.3,factor_key = TRUE)  ##factor_key divides GROUP in parts in summary
summary(df1)

#SEPRATE
#SINGLE COLUMN INTO MULTIPLE COLUMN
df2=df1%>%separate(Group,c("Allotment","Number")) ##GROUP contain value G.1 is separated into two diff column "ALLOTMENT" & "NUMBER"
##Upper command is used in vase of "dot"separate
##in case of "COMMA separate" we use " sep = "," "
View(df2)

#UNITE
##MERGING TWO COLUMN INTO ONE

df3=df2%>%unite(Grp,Allotment,Number,sep=",")  ##this will merge allotment and number column into "Grp" column with separater "comma" 
View(df3)

##Spread 
##LONGER DATA INTO WIDER FORM

df4=df3%>%spread(Grp,Frequency)  ##it is now back to its original form (only comma seprater is used)
View(df4)

?nest()

##FILL
#FILLING NA VALUES with same value present in data frame
df5=data.frame(Days=1:7,Value=c(50,rep(NA,5),20)) ## a data frame containing missing data
View(df5)
df6=df5%>%fill(Value) 
View(df6)
df7=df5%>%fill(Value,.direction = "down")
View(df7)
df8=df5%>%fill(Value,.direction = "up")
View(df8)

drop_na() 
df5%>%drop_na(Value)##drop missing data  **not used as it decrease the data

replace_na() 
df5%>%replace_na(list(Value=5))  ##replace the missing data

num=c(2,4,6,20)
full_seq(num,2)  ##give full sequence with diff of 2

##TASK
##download chart.csv from lpulive(link) and read it here and apply tidyr commands on the given data frame
data223=read.csv(file.choose())
View(data223)
dff1=data223%>%separate(date,c("year","month","day"))
View(dff1)
dff2=dff1%>%unite(DATE,year,month,day,sep="-")
View(dff2)



##STRINGS
#paste function used for concatenation
s=paste(c(1:3),"4",sep=":")
s
s1=paste(c(1:3),c(4:6),sep="-")
s1

#cat function used for concatenation but without " "
s2=cat(c(1:3),c(4:6),sep="-")
s3=cat("Learn","R",sep=",")

cat("Learn","R",sep=",",file="sample.txt")  ##in this the output will be 
                                              ##written in sample.txt which can be located in work directory
length(c("Learn","R"))  ##determines number of strings
nchar(c("Learn","R"))  ##it will count number of words in each string
toupper(c("Learn","R")) ##it will convert case to UPPER CASE
tolower(c("Learn","R")) ##it will convert case to LOWER CASE
