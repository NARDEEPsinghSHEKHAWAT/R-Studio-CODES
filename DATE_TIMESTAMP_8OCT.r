Sys.Date()
Sys.time()

##date,POSIXct,POSIXlt
?as.Date
#Date
#create a date
d1=as.Date("2022-03-30")
d1
d2=as.Date("04/20/2022",format="%m/%d/%Y")
d2
d3=as.Date("Aug 1, 2022",format="%b %d,%Y")
d3
?strptime
#calculations with dates
d2-d1
difftime(d2,d1,units = "weeks")
d2+10
d1-10
#Create a vector of dates and 
#find the interval between them
dates=as.Date(c("2010-07-22",
                "2011-04-20",
                "2012-10-06"))
diff(dates)
#Create a sequence of dates
six_weeks=seq(d1,length=6,by="week")
six_weeks
six_weeks=seq(d1,length=6,by=14)
six_weeks
six_weeks=seq(d1,length=6,by="3 weeks")
six_weeks

#POSIXct
t1=as.POSIXct("2022-07-24 10:08:29")
t1
t2=as.POSIXct("20220724 08:29:07",format="%Y%m%d %S:%M:%H")
t2
t3=as.POSIXct("2022-07-24 10:08:29",tz="GMT")
t3

t1>t2
t1+30
t1-30
t1-t2

date()
#chron
class(t1)
class(d1)
typeof(t1)
typeof(d1)

dt1=strptime("16/April/2022:10:05:30",
             format="%d/%b/%Y:%H:%M:%S")
dt1
dt2=strftime(dt1,format="%Y-%b-%d")
dt2

dt3=ISOdate(2022,03,30,12,0,0,tz="GMT")
dt3
format(dt3,"%A,%B,%d,%Y %H:%M:%S")

dates=scan(what="")


