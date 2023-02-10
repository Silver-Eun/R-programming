# data mining : extracting useful and latent patterns from structured data

# text mining : find meaningful information in unstructured text data

# word cloud : categorizes words in a document
#              so that you can see their frequency at a glance

# word cloud package
# RcolorBewer : offering a variety of colors
# KONLP : processing korean

install.packages('wordcloud')
library(wordcloud)

word<-c('Seoul','Gwangju','Daejeon','Busan','Ulsan','Gangneung') # local name
freq<-c(720,61,120,200,400,80) # population change

# display the number of population movements by region in wordcloud

wordcloud(word,scale=c(8,.5),freq,colors='red',random.order=F)

wordcloud(word,scale=c(8,.5),freq,random.color=T,
          color=rainbow(length(word)))

# wordcloud(word,freq,scale,min,freq,max,words,random.order,
#           random.color,rot.per,colors)