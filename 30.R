read.csv('~/wordcloud.csv',header=TRUE)

singer<-read.csv('~/wordcloud.csv',header=TRUE)

names(singer)
singer[,2]


wordcloud(singer[,1],singer[,2])

pal<-brewer.pal(8,'Set1')

# set font
windowsFonts(mk=windowsFont('맑은고딕'))

wordcloud(singer[,1],singer[,3],random.order=F,colors=pal,
          family='mk')

# file.choose:choose file using navigation
read.csv(file.choose(),header=TRUE) 

data<-readLines('~/exo_data.txt')

# apply : lapply, sapply, vapply, tapply

# 'split-Apply-Combine'

# lapply() : 1 = list, input list - print list

x<-list(a=1:5,b=rnorm(10))
x

# average of a & b in list
xList<-lapply(x, mean)
xList

class(xList)

# change to vector
as.double(xList)

# change to vector func, sapply()
# s = simplify

sapply(x, mean)

lapply(x, function(y)(y+1))

sapply(x, function(y){y+1})

vapply(x, mean, double(1))

vapply(x, function(y){y+1}, double(5))

vapply(x, function(y){y+1}, double(10))

a<-matrix(rnorm(200),20,10)
lapply(a,mean)

apply(a,2,mean)

apply(a,2,mean) # average over column
apply(a,1,mean) # average over row

colMeans(a) # Mean over column
colSums(a) # sum over column

rowMeans(a) # Mean over row
rowSums(a) # sum over row

# tapply

x<-c(rnorm(10),runif(10),rnorm(10,1))

# average 0, normal distribution makes 10 numb standard deviation of 1
rnorm(10)

# average 1, normal distribution makes 10 numb standard deviation of 1
rnorm(10,1) 

# function makes equal distribution, numb min 0, max 1
runif(10)

x

f<-gl(3,10) # create factor level, makes 10 each factor

f

tapply(x, f, mean, simplify=TRUE)

tapply(x, f, mean, simplify=FALSE)

tapply(x, f, range)

head(mtcars)

table(mtcars$cyl)

tapply(mtcars$mpg, mtcars$cyl, mean)

head(iris)

mean(iris[iris$Species=='setosa']$Sepal.Length)

colMeans(iris[iris$Species=='setosa', 1:4])

iris

# find mean sepal length for each iris cultivar
tapply(iris$Sepal.Length, iris$Species, mean)