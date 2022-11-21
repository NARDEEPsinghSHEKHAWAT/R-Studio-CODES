##FAMILY OF FUNCTION

#apply function 
##apply function to a matrix or a data frame
View(mtcars)
apply(mtcars,2,mean)
a=apply(mtcars,2,sum)
View(a)


##get the coloumn quntiles
b=apply(mtcars, 2, quantile,probs=c(.10,.24))

#lapply
##it applies to a list and returns a list
d=list(d1=1:5,
       d2=rnorm(10),
       d3=rnorm(20,1))
d
res=lapply(d,mean)
res
View(beaver1)
View(beaver2)
beaverData=list(b1=beaver1,b2=beaver2)
beaverData
View(beaverData)
lapply(beaverData, function(x)apply(x,2,mean))
?apply

##sapply
#it will call lapply than simplfy the list in three steps
#1. if the result is list with length 1 than it will return vector
res=list of length 1
return vector
#2. if the result is list with all list having same length (>1) it will return matrix
res=list with same length>1
return matrix
else
  return list #3rd


sapply(beaverData, function(x)apply(x,2,mean)) #will return matrix
sapply(d,mean)  #will return vector


##Create a list check with three inbuilt datasets as its components
#and calculate the sum of each component of the list use 
#1. lapply
#2. sapply
CheckData=list(c1=trees,c2=beaver1)
lapply(CheckData, function(x)apply(x,2,sum))
sapply(CheckData, function(x)apply(x,2,sum))

#tapply
##1. when are datasets is broken into diff groups 
##2. when user wants to break datasets into diff groups
##3. with each group, want to apply a function

#CALCULATE THE MEAN OF THE MTG
View(mtcars)
tapply(mtcars$mpg,mtcars$cyl, mean)
View(trees)
res2=apply(trees,2,function(x)tapply(x, trees$Girth, mean))
res2
?grep


