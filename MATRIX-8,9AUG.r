#MATRIX
#homogenous data

m1=matrix(c(11,13,15,17,19,21),nrow=3) #only rows
m1

m2=matrix(c(11,13,15,17,19,21),ncol=4) #only column
m2

m3=matrix(c(11,13,15,17,19,21),nrow=3,ncol=4, byrow = TRUE) #numbers that we have taken will be in order in row 
m3

rnames=c('a','b')
cnames=c('1','2','3')
m4=matrix(c(11,13,15,17,19,21),nrow=2,ncol=3, byrow = TRUE, dimnames=list(rnames,cnames)) #for combining and naming the row and column we have used dimnames=list('-','-')
m4

m4[2,2] #accessing the specified row,column
m4[2,]  # only row
m4[,3]  # only column

#modify the element at row1 and column 1 to 0
m4[1,1]=0
m4

#create a matrix with 4rows and the elements from 5 to 16 stored by row also give the dimension name and replace the element >12 with to 1
rnames=c('a','b','c','d')
cnames=c('1','2')
m5=matrix(c(6,4,13,15),nrow=4,ncol = 2,byrow=TRUE,  dimnames(list(rnames,cnames)))
m5 
m5[m5>12]=1
m5


rbind(m5,c(23,25)) #adding new row (temp)

m5=rbind(m5,c(23,25)) #adding row (perm)
m5
m5=cbind(m5,c(24))  #adding column
m5

dim(m5) #dimension of m5 matrix
dim(m5)=c(10,2) #changing the dimension of prev matrix (perm)

#calculating Transpose of matrix
t(m5)

#write a program to create two 4*3 matrices with the first element having numbers from 5 to 16 and second one having elements fro 1 t0 12 than perform add sub multiplication division
m6=matrix(c(5,6,7,8,9,10,11,12,13,14,15,16),nrow=4,ncol=3,byrow=TRUE)  #or else m6=matrix(c(5:16),nrow=4,byrow=TRUE)
m7=matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=4,ncol=3,byrow=TRUE)     #or else m7=matrix(c(1:12),nrow=4,byrow=TRUE) 

m6+m7
m6-m7
m6*m7
m6/m7

