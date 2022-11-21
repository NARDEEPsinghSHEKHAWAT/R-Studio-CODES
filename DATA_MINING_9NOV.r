sms_raw=read.csv(file.choose(),stringsAsFactors = FALSE)
View(sms_raw)
str(sms_raw)
summary(sms_raw)

##DATA MINING
#TEXT MINING
#WORD CLOUD
sms_raw$type=factor(sms_raw$type)
summary(sms_raw)
install.packages("tm")
library(tm)

#creating CORPUS
#COLLECTION OF TEXT DOCUMENT
sms_corpus=VCorpus(VectorSource(sms_raw$text))  #Vcorpus --> volatile corpus as it is stored on volatile memory 
View(sms_corpus)
sms_corpus
inspect(sms_corpus[1:2]) 
sms_corpus[["1"]]

as.character(sms_corpus[[1]]) #read first messg
lapply(sms_corpus[1:2], as.character)  ## to view first two messg as characters/texts
             

##divide messg by word wise
?tm_map()
sms_corpus_clean=tm_map(sms_corpus,content_transformer(tolower)) ##converting all the character into small case
sms_corpus_clean
sms_corpus_clean[["1"]]
as.character(sms_corpus_clean[[1]])


sms_corpus_clean=tm_map(sms_corpus_clean,removeNumbers)  ##remove all numerical values
sms_corpus_clean=tm_map(sms_corpus_clean,removePunctuation) ##remove all punctation
as.character(sms_corpus_clean[[1]])
stopwords()  ##viewing  stopwords
sms_corpus_clean=tm_map(sms_corpus_clean,removeWords,stopwords()) ##removing stopwords
sms_corpus_clean[["1"]]
as.character(sms_corpus_clean[[1]])


install.packages("SnowballC")
library(SnowballC)
          #example---->wordStem(c("learns","learned","learning"))
          #output----> wordStem(c("learns","learned","learning"))
                 # [1] "learn" "learn" "learn"

sms_corpus_clean=tm_map(sms_corpus_clean,stemDocument)  #stemDocument will stem each word of the document
as.character(sms_corpus_clean[[3]])

sms_corpus_clean=tm_map(sms_corpus_clean,stripWhitespace)
as.character(sms_corpus_clean[[3]])

#CREATING DOCUMENT MATRIX
sms_data=DocumentTermMatrix(sms_corpus_clean)
sms_data

install.packages("wordcloud")
library(wordcloud)
wordcloud(sms_corpus_clean,min.freq = 50,random.order = FALSE)
wordcloud(sms_corpus_clean,min.freq = 40,scale = c(3,0.4),random.order = FALSE)
