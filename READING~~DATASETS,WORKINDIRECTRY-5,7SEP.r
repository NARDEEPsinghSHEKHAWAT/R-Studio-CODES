?datasets
read.csv()
getwd()    #GETTING WORKING DIRECTRY
health=read.csv("health.csv")  #READING .csv FILE   
#..at the place of name you can provide the location of .csv file 
# or you can go to directory and select the folder to change and set new file directory

View(health) #view in table view
summary(health)
str(health)  

file=read.csv("health.csv",header = FALSE,)
file=read.table(file.choose(),sep = ",",stringsAsFactors = TRUE)
View(file)
str(file)
install.packages("Rtools")
install.packages("readxl")     ##used to install package
library(readxl)              ##used to load the package
file1=read_excel("file_example_XLS_50.xls")
View(file1)

install.packages("sqldf")
library(sqldf)
i=iris
View(i)
str(i)
summary(i)
sqldf("select [Sepal.Width] from i where [Sepal.Width]>=3.0") #we are using sql queries..[] is used when column name is having '.'  

View(Orange)
#Write a query to fetch Age and circumference from the table orange subjected to 
##the condition that it must belong to TREE 1 also arrange your result in ascending order

sqldf("select age,circumference from Orange where Tree=1 order by TRUE") 
sqldf("select age,circumference from Orange where Tree=1 order by circumference ASC")


sqldf("select * from BOD")


##Print five rows from dataset "i" 
#select from the table Orange select the five records 
#from table Orange arrange in asc order by age and desc by cicum
sqldf("select * from i limit 5") 
sqldf("select * from Orange order by age ASC ,circumference DESC limit 5 ") 


sqldf("select demand from BOD where time >3")


#Print the columns from table BOD where the time will be in 1 and 7
sqldf("select * from BOD where time in (1 ,7)")



#print the all the columns from the table rock subjected to the condition "Peri" >3000 and Shape<0.5 or perm>1000 from table rock
sqldf("select * from rock where (peri>3000 and shape<0.5) or perm>1000 ")
View(rock)


#extract the data from the table where feed ends with bean  from table chickwts
sqldf("select * from chickwts where feed LIKE '%bean'")
View(chickwts)

#select extract the data where feed starts with meat and where the feed does not ends with in
sqldf("select * from chickwts where feed LIKE 'meat%'")
sqldf("select * from chickwts where feed NOT LIKE '%in'")

#select the avg circumference ..group the circumference by tree column in the 
#data set and name the column containing the avg as meancirc
sqldf("select tree,avg(circumference) meancirc from Orange group by tree ")

#return the number of observ from the table iris 
sqldf("select count() from iris")
View(iris)

#count the number of observation where the sepal length is greater than 4.0
sqldf("select count([Sepal.Length]) from iris where [Sepal.Length]>5.0")
?RSQLite


#find all the players who have started every game they have played in
#find the total number of players who played for each team in the 2020 season
#find the avg salary of each team for the season
#find the dollar cost of each point scored by an NBA TEAM
stat=read.csv("Seasons_Stats.csv")  #READING .csv FILE   
salary=read.csv("Salaries1.csv")
Players=read.csv("Players.csv")
Player_data=read.csv("player_data.csv")
str(Players)
str(Player_data)

View(stat)
summary(stat)
str(stat)
View(salary)
sqldf("select player from stat where G=GS")
sqldf("select count(player) from stat where year=2020 & 2021 group by Tm")
sqldf("select team,avg(salary) from salary group by team ")

sqldf("select Tm,sum(salary)/sum(Pts) from stat inner join salary on NAME group by Tm")
