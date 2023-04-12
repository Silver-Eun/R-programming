data<-readLines('~/exo_data.txt')
data

library(KoNLP)

extractNoun(data)

data1<-sapply(data,extractNoun, USE.N=F)
data1

head(unlist(data1),30)

data2<-unlist(data1)
data2

# filter two or more characters

data3<-Filter(function(x){nchar(x)=2}, data2)
data3

# gsub gsub('before char', 'after char','origin data')

# delete numb
data4<-gsub("\\d+","",data3)
data4

data4<-gsub("palpit","",data4)
data4

data4<-gsub("log","",data4)
data4

data4<-gsub("-","",data4)
data4

data4<-gsub("오후","",data4)
data4<-gsub("\\.","",data4)
data4

data4<-gsub("오전","",data4)
data4

write(unlist(data4), "~/exo_Filter.txt")

# delete spaces
data5<-read.table("~/exo_Filter.txt")
data5

nrow(data5)

table(data5)

wc<-table(data5);wc

sort(wc, decreasing=T)

head(sort(wc, decreasing=T), 20)

cols<-brewer.pal(12,'Set3')
names(wc)
wordcloud(names(wc), freq=wc,scale=c(9,1),rot.per=0.25,min.freq=1,
          random.order=F, random.color=T,colors=cols)