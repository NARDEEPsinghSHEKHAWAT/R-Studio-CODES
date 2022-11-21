library(MASS)
airquality
install.packages("VIM")
is.na(airquality)  ##checking in data frame values is NULL
View(airquality)
which(is.na(airquality))   ## position where values are NA 
airquality1=na.omit(airquality)  ## omitting NA values with rows 
View(airquality1)

library(VIM)
View(sleep)

data=c(sample(x=1:20,size=30,replace = TRUE),75,80,-20)
View(data)
data
summary(data)
length(data)
boxplot(data)
median(data)

rule1=17.00+1.5*IQR(data)
rule2=6.00-1.5*IQR(data)

rule1
rule2

#removing the data
data
data1=data[data<=rule1]
data1
data1=data1[data1>=rule2]
data1

summary(data1)
length(data1)
boxplot(data1)

#winsorizing
data
data[data>rule1]=rule1
data[data<rule2]=rule2
data
summary(data)
length(data)
boxplot(data)

airquality
#Missing data
airquality$Ozone
airquality$Solar.R
#Outliners
boxplot(airquality)
quantile(data,)

airquality1=na.pass(airquality)
aq=airquality
aq$Ozone[which(is.na(aq$Ozone))]=median(aq$Ozone,na.rm = TRUE) ##handling missing data (removed missing data)
aq$Ozone
summary(aq$Ozone)
length(aq$Ozone)
boxplot(aq$Ozone)
median(aq$Ozone)

r1=46.00+1.5*IQR(aq$Ozone)
r2=21.00-1.5*IQR(aq$Ozone)
r1
r2

aq$Ozone[aq$Ozone>r1]=r1
summary(aq$Ozone)
boxplot(aq$Ozone)

#wind
summary(aq$Wind)
boxplot(aq$Wind)
r=11.500+1.5*IQR(aq$Wind)
aq$Wind[aq$Wind>r]=r
summary(aq$Wind)
boxplot(aq$Wind)

#Solar.R
summary(aq$Solar.R)
aq$Solar.R[which(is.na(aq$Solar.R))]=median(aq$Solar.R,na.rm = TRUE)
summary(aq$Solar.R)
boxplot(aq$Solar.R)

summary(aq)
boxplot(aq)


sleep
View(sleep)
summary(sleep)
sp=sleep
?impute
install.packages("Hmisc")
library(Hmisc)
impute(sp$NonD, median)
impute(sp$Dream, median)
impute(sp$Sleep, median)
impute(sp$Span, median)
impute(sp$Gest, median)
summary(sp$NonD)
boxplot(sp$NonD)
boxplot(sp$Gest)

##GEST
summary(sp$Gest)
r11=207.50+1.5*IQR(impute(sp$Gest, median))
r11
sp$Gest[sp$Gest>r11]=r11
summary(sp$Gest)
boxplot(sp$Gest)

##DREAM
summary(sp$Dream)
r12=2.550+1.5*IQR(impute(sp$Dream, median))
r12
sp$Dream[sp$Dream>r12]=r12
boxplot(sp$Dream)
##Sleep
summary(sp$Sleep)
r13=13.20+1.5*IQR(impute(sp$Sleep, median))
r13
sp$Sleep[sp$Sleep>r13]=r13
boxplot(sp$Sleep)

##SPAN
summary(sp$Span)
r14=27.750+1.5*IQR(impute(sp$Span, median))
r14
sp$Span[sp$Span>r14]=r14
boxplot(sp$Span)
##NonD
summary(sp$NonD)
r15=11.00+1.5*IQR(impute(sp$NonD, median))
r15
sp$NonD[sp$NonD>r15]=r15
boxplot(sp$NonD)

##BODYWGT
summary(sp$BodyWgt)
r16=48.203+1.5*IQR(impute(sp$BodyWgt, median))
r16
sp$BodyWgt[sp$BodyWgt>r16]=r16
boxplot(sp$BodyWgt)


##BrainWGT
summary(sp$BrainWgt)
r17=166.00+1.5*IQR(impute(sp$BrainWgt, median))
r17
sp$BrainWgt[sp$BrainWgt>r17]=r17
boxplot(sp$BrainWgt)


summary(sp)
boxplot(sp)


