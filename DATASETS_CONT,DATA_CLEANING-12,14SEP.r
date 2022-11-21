?date
date()
nchar(d)
library(sqldf)
sqldf("create table Employee(Empid number, EmpName varchar, Department ContactNo number, EmailId varchar, EmpHeadId number)")


#select the details of the emloyee whose name start with p
#how many permanent candidate take salary more than 5000
#select the detail of employee whose email id is in gmail
#select the details of the employee who work either for department e-104 or e-102
#what is the dept name of deptid e-102
#what is the total salary that is paid to perm employee
#list all the emp whose name ends with an A
#list number of department of employ in each project
#how any peohects started in year 2010
#how many projects started and finished n same year
#select the name of emp who third char is h
library(readxl)
EMPLOYEE=read_excel("EMPLOYEE.xlsx")
EmpDept=read_excel("EmpDept.xlsx")
EmpProject=read_excel("EmpProject.xlsx")
EmpSalary=read_excel("EmpSalary.xlsx")
Project=read_excel("Project.xlsx")
Country=read_excel("Country.xlsx")
ClientTable=read_excel("ClientTable.xlsx")

View(Employee)

sqldf("select * from EMPLOYEE where empname like 'p%'")
sqldf("select count(empid) from EmpSalary where salary>5000 and ispermanent='Yes'")
sqldf("select * from EMPLOYEE where emailid like '%gmail%'")
sqldf("select * from EMPLOYEE where department='E-102' or department='E-104'")
sqldf("select DeptName from EmpDept where deptid='E-102'")
sqldf("select sum(salary) from EmpSalary where ispermanent='Yes'")
sqldf("select * from EMPLOYEE where empname like '%a'")
sqldf("select count(empid) from EmpProject group by projectid")
sqldf("select count(projectid) from EmpProject where startyear=2010")
sqldf("select count(projectid) from EmpProject where startyear=endyear")
sqldf("select * from EMPLOYEE where empname like '__h%'")


#1.select the dept name of the company which is assign to the employee who`s empyid>103
#2.select the name of the employee who is working under abhishek
#3.select the name of the employee who is dept head of HR
#4.select the name of the employee head who is perm
#5.select the name and email id of the department head who is not per
#6.select the employee who dept is off on Monday
#7.select the Indian client details
#8.select the details of all the employees working in development depart

sqldf("select DeptName from EmpDept where deptid>'E-103'")
sqldf("select empname from EMPLOYEE where empheadid=105")
sqldf("select empname from EMPLOYEE where empid=(select depthead from EmpDept where deptname='HR')")
sqldf("select empname from EMPLOYEE where empid=(select empid from EmpSalary where ispermanent='yes')")    ##NOT WORKING
sqldf("select empname,emailid from EMPLOYEE where empid=(select empid from EmpSalary where ispermanent='no')")  ##NOT WORKING
sqldf("select empname from EMPLOYEE where empid=(select DeptHead from EmpDept where Dept_off='Monday')")
sqldf("select * from ClientTable where cid=(select cid from Country where cname='india')")      ##NOT WORKING
sqldf("select * from EMPLOYEE where department=(select deptid from EmpDept where deptname='Development')")
sqldf("select EmpName from EMPLOYEE where EmpId in(select EmpHeadId from EMPLOYEE) and EmpId in(select EmpId from EmpSalary where IsPermanent='Yes')")    ## 4. WORKING
sqldf("select empname, emailid from EMPLOYEE where empid in(select depthead from EmpDept ) and empid in(select empid from EmpSalary where ispermanent='No')")  ## 5. WORKING
sqldf("select * from ClientTable where cid in(select cid from Country where cname='India')")  ## 7. WORKING




##DATA CLEANING 

Titanic
summary(Titanic)
str(Titanic)
boxplot(Titanic)
 
my_data=data.frame(x1=c(1,2,NA,4),    ##create new data frame
                   x2=c(5:8),
                   x3=c('A',NA,NA,'D'),
                   x4=as.factor(c('M','F','F',NA)),
                   x5=c('X','Y','W','z'))
View(my_data)
is.na(my_data)  ##checking in data frame values is NULL
colSums(is.na(my_data))  ##Sum of all NA values Column wise
which(colSums(is.na(my_data))>0)   ##check where sum of NA column wise is >0
which(is.na(my_data))   ## position where values are NA 
names(which(colSums(is.na(my_data))>0))    ## Name of the columns where sum of NA column wise is >0
my_data1=na.omit(my_data)  ## omitting NA values with rows 
View(my_data1)  ## omitted Data frame(new)

mean(my_data$x1,na.rm = TRUE) ## mean of new data frame
mode(my_data$x4,na.rm = TRUE)


##write a function to replace the missing data in the my_data frame with the mean of that particular column  
my_data$x1[is.na(my_data$x1)]=mode(my_data)



View(my_data)



v=c(11,23,45,67,89,20)
match(45,v)
unique(v)
tabulate(v)
which.max(v)

##write a function calculating the mode
calmode=function(v){
  v1=unique(v)
  v1[which.max(tabulate(match(v,v1)))]
}
calmode(v1)
mtcars
View(mtcars)


?complete.cases()
