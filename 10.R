# *************
# 데이터 입출력
# *************

library(help=datasets) # 데이터 목록을 보기 위한 명령

data()
BOD

mtcars

quakes

head(quakes, n=10) # 데이터의 앞부분 10개 행보기

tail(quakes, n=10)

head(mtcars, n=10)

names(quakes) # 데이터셋의 변수를 복기 위한 명령

str(quakes)


x = 12


mode(x)
x<-c(1,2,3)
mode(x)
z<-c('a','b','b')
mode(z)

aa<-22.3
mode(aa)

bb<-c(T,T,F)
mode(bb)

cc=TRUE
mode(cc)

xx<-factor('m',c('m','f'))
mode(xx)

dim(quakes) # 데이터셋의 차원(행과 열의 수)

summary(quakes) # 데이터셋의 각 변수별 데이터 요약점

summary(quakes$mag)

mydata<-data.frame(age=numeric(0), gender=character(0), weight=numeric(0))
mydata

mydata<-edit(mydata)

# R과 연관된 데이터를 제공하는 사이트
# https://www.public.iastate.edu/~hofmann/data_in_r_sortable.html

# https://vincentarelbundock.github.io/Rdatasets/datasets.html

# https://r-dir.com/reference/datasets.html

# https://www.rdatamining.com/resources/data

# 데이터셋을 파일로 저장하기
# write.table() 함수를 이용하여 데이터셋을 저장
quakes
write.table(quakes, "/R-programming/quakes.txt", sep='\t') # \t는 탭으로 구분자를 넣음

write.table(quakes, "/R-programming/quakes.csv")



# 외부파일 읽어오기
x<-read.csv("/R-programming/quakes.txt", header = TRUE)
x


y<-read.table("/R-programming/quakes.txt", header = TRUE)

y

# https://vincentarelbundock.github.io/Rdatasets/csv/datasets/Titanic.csv

url<-"https://vincentarelbundock.github.io/Rdatasets/csv/datasets/Titanic.csv"

titanic<-read.csv(url)

titanic
