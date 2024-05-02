# 1. Install corpus/ documents
# 2. Pre-processing like data cleaning, formatting, etc
# 3. Stop words ( common words)
# 4. DTM 
# 5. Text analysis
# 6. Text visualization

# install.packages("tm")  for text mining
# install.packages("SnowballC")  for text stemming i.e. not using words with similar meaning
# install.packages("wordcloud")  way of representing graphically
library(tm)
library(SnowballC)
library(wordcloud)
txt<-read.csv("C://lpu//4th sem//INT232 - R Programming//Datasets//Text_data.csv")
corp<-iconv(txt$sentence)  # there is no need of conversion of data into vector using iconv if only some data is given
# it is useful if the data is large
# corpus is a list of documents
#VectorSource creates a corpus of character vector
corp<-Corpus(VectorSource(corp))
inspect(corp[1:5])  # retreiving 5 documents from 1000 documents

#start preprocessing 
#text cleaning (convert to lowercase)
#content_transformer creates content transformer
# i.e. functions which modify the content of an R object
corp<-tm_map(corp, content_transformer(tolower))
inspect(corp[1:5])
#remove numbers
corp<-tm_map(corp, removeNumbers)
inspect(corp[1:5])
# remove stop words (common english words)
stopwords("english")  # these are the words in english which are intented to stop when we use them, the words in the sentence will get cleared
corp<-tm_map(corp, removeWords, stopwords("english"))
inspect(corp[1:5])
# remove punctuations
corp<-tm_map(corp, removePunctuation)
inspect(corp[1:5])
# if we remove anything from the sentence, then the removed part will be converted into whitespaces
# to remove those whitespaces, we need to use stripWhitespace
corp<-tm_map(corp, stripWhitespace)
inspect(corp[1:5])

#stemming text
corp<-tm_map(corp,stemDocument)
inspect(corp[1:5])
#remove additional stop words
#stopwords("english")
corp<-tm_map(corp,removeWords,c("get","told","took","gave","can"))
inspect(corp[1:5])
#create TDM
# TDM: table containing frequency of words
corp<-TermDocumentMatrix(corp)
corp
corp<-as.matrix(corp)
corp
srt<-sort(rowSums(corp))# ascending order
srt
St<-sort(rowSums(corp), decreasing = TRUE) #descending order
d<-data.frame(word=names(srt),freq=srt)
View(d)
wordcloud(d$word,d$freq,random.order=FALSE,
          rot.per=0.6,scale=c(4,.5),min.freq = 1,  
          max.words=200,
          colors=brewer.pal(5,"Dark2"))
# the word size will be dependent on their frequency in the sentence
# more the frequency, larger the size of text in the wordmap