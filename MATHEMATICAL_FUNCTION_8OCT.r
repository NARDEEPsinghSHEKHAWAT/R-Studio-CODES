a=-10

abs(a)
abs(-10)

b=10
sqrt(2)
sqrt(b)

ceiling(3.47)
floor(3.47)
trunc(5.47)

round(3.5689)
round(3.5689,digits = 2)

signif(6.87593,3)

cospi(30)
cos(30*pi/180)
sin(30)
tan(30)

log(11)
log10(11)
exp(10)


v1=c(10,20,30,40,50,NA)
mean(v1,na.rm = TRUE)

v=c(10,20,30,40,50)
mean(v)

sd(v)
var(v)
median(v)
min(v)
max(v)
sum(v)
range(v)
quantile(v)

demo=c(12,3,4,56,78,18,46,78,10)
quantile(demo)

quantile(demo,probs = c(24,79))

quantile(demo,probs = c(.24,.79))
unname(quantile(demo,probs = c(.22,.77))
)

seq(2,10,2)
rep(1:3,3)

exam=c(6.1,5.3,8.9,5.0,8.8,1.9,6.6,7.2,9.4,4.9)
note=cut(exam,breaks=c(0,4.9,10),labels=c("fail","pass"))
final=data.frame(exam,note)
final

