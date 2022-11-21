#var= switch (expression,val1,val2,val3,....)

x="a"
y=switch (x,"a"="apple","a"="avacado","b"="banana","c"="Cherry")
y

z=readline("Enter a number: ")
z=as.numeric(z)
y=switch (z,"a"="apple","a"="avacado","b"="banana","c"="Cherry")
y


##WAP to demonstrate the working of a calculator using switch. you have to create a calculator using switch
V1=readline("Enter a number: ")
V1=as.numeric(V1)
V2=readline("Enter another number: ")
V2=as.numeric(V2)
print("1 for addition")
print("2 for substraction")
print("3 for multiplicagion")
print("4 for division")

OP=readline("enter the operation:")
OP=as.integer(OP)

switch(OP,cat("ADDITION:" ,V1+V2),cat("SUBTRACTION:", V1-V2),cat("MULTIPLICATION:" ,V1*V2),cat("DIVISION:", V1/V2))


