# data mining : extracting useful and latent patterns from structured data

# text mining : find meaningful information in unstructured text data

# word cloud : categorizes words in a document
#              so that you can see their frequency at a glance

# word cloud package
# RcolorBewer : offering a variety of colors
# KONLP : processing korean

install.packages('wordcloud')
library(wordcloud)

word<-c('Seoul','Gwangju','Daejeon','Busan','Ulsan','Gangneung')
freq<-c(720,61,120,200,400,80) # population change

# display the number of population movements by region in wordcloud

wordcloud(word,scale=c(8,.5),freq,colors='red',random.order=F)

wordcloud(word,scale=c(8,.5),freq,random.color=T,
          color=rainbow(length(word)))

# wordcloud(word,freq,scale,min,freq,max,words,random.order,
#           random.color,rot.per,colors)

library(RColorBrewer)

# brewer.pal() : brewer(n,name)
# n : numb of palette(min=3,max=depending on palette)
# name : name of palette
# Qualitative palette - Dark2[8],Accent[8],Paired[12],Pastel1[9],
#                       Pastel2[8],Set1[9],Set2[8],Set3[12]
# category of palette : Sequential palette, Qualitative palette
#                       Diverging palette

pal<-brewer.pal(8,'Accent')
pal<-brewer.pal(9,'Set1')
pal<-brewer.pal(9,'Pastel1')
pal<-brewer.pal(12,'Paired')

display.brewer.all()
display.brewer.all(type='seq')
display.brewer.all(type='qual')
display.brewer.all(type='div')

display.brewer.pal(8,'Dark2') # print designated palette
display.brewer.pal(9,'Pastel1')

pal<-brewer.pal(9,'OrRd')
pal<-brewer.pal(11,'BrBg')
wordcloud(word,scale=c(10,.5),freq,colors=pal)