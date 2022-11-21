s=c("Hello all",
    'is there any solution?',
    ".[{(^$|?*+",
    "lpu.com",
    "321-555-4321",
    "123.555.1234",
    "123*555*1234")
?stringr
install.packages("stringr")
library(stringr)

#Extract all the dots from these texts:
str_extract_all(s,"\\.")

#Extract all the digits
str_extract_all(s,"\\d")

#Extract all but digits
str_extract_all(s,"\\D")

#Extract all the word characters
str_extract_all(s,"\\w")

#Extract all but word characters
str_extract_all(s,"\\W")

#Catch the word bounday
st="This is Bliss"
str_extract_all(st,"\\bis")#Extract "is" that is in the boundary
str_extract_all(st,"\\Bis")#Extract "is" that is not in the boundary

sts=c("This is me",
      "That's my house",
      "Hello, All!")
#Extract all the exclamations that ends a sentence
str_extract_all(sts,"!$")
sts[str_detect(sts,"!$")]

#Extract all the T's that starts a sentence
str_extract_all(sts,"^T")
sts[str_detect(sts,"^T")]

#Extract everything in between 2-4
str_extract_all(s,"[2-4]")

#Extract the phone numbers only
str_extract_all(s,"\\d\\d\\d.\\d\\d\\d.\\d\\d\\d\\d")
str_extract_all(s,"\\d{3}.\\d{3}.\\d{4}")

str_extract_all(s,"\\d{3}[-.]\\d{3}[-.]\\d{4}")

#Extract them different format of email addresses
email=c("abcProf@gmail.com",
        "rash.Uni@regen04.net",
        "Prof_48@uni.edu",
        "0001")

p="[a-zA-Z0-9_.]+@[a-zA-Z0-9]+\\.[a-zA-Z]+"
str_extract_all(email,p)

#working with names
name=c("Mr. Jon",
       "Mrs. Sharma",
       "Mr Akhil",
       "Ms. Aarti",
       "Ms Priya",
       "Ravi")
e="M(r|s|rs)\\.?\\s[A-Z]\\w*"
str_extract_all(name,e)


##\\ is used as we cannot use dingle \
##each meta character matches each letter
## \\s represent spaces

r5=str_extract_all(basic,"\\s")
basic="we are students 11. we 2 study1 r studio."
r5

r4=str_extract_all(basic,"\\d")
r4
r6=str_extract_all(basic,"\\w")
r6

ex="B.BB.BBB.BBBB.BBBA"
r7=str_extract_all(ex,"BBBB")
r7
r8=str_extract_all(ex,"BB+A+")
r8
r9=str_extract_all(ex,"B{3}")   ##letter with "BBB" pattern
r9
r10=str_extract_all(ex,"B{3,4}") ##lower limit 3 nd upper limit 4
r10
r11=str_extract_all(ex,"B{3,}") ##lower limit 3 and upper limit more than 3
r11
r12=str_extract_all(basic,"[A-Za-z]+")  ##complete range
r12
r13=str_extract_all(basic,"\\d{1,2}")
r13
r14=str_extract_all(basic,"\\d{1,2}\\s\\w+\\s*\\w*")
r14
r15=str_extract_all(basic,"\\w*")
r15
?str_match_all()
alphabet=("[A-Za-z]")
number=("0-9")
str_match_all(basic,alphabet)
str_match_all(basic,number)
str_match(basic,number)
str_match(basic,alphabet)
