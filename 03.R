#seq함수 : 일련번호의 벡터를 생성하는 함수
#seq : base 패키지 안에 있는 함수
#seq 인자 : from, to, by, length.out(생성할 벡터의 개수)
x<-seq(1,10)
x

x<-1:10

x<-seq(10,1)
x
x<-10:1
x

x<-seq(1,10,by=3) #by=3은 3씩 증가를 의미
x

x<-seq(1,10, length.out=5) #1~10 사이를 같은 간격으로 하는 5개의 숫자 표시
x

#rep()함수 : 반복적인 값들의 벡터를 생성하는 함수
x<-c(1,2,3)
rep(x,times=2)
rep(x,times=3)

rep(x,each=2)

x<-c(1,2,3,4,5)
x
x[3]

x[1:3]

x[c(1,3,5)] #1,3,5번째 원소를 가져오겠다.
x[-c(2,4)]
x[x>2]
x[x>=2 & x<=4]

#벡터원소의 수정은 대입연산자를 이용한다.

x[3]<-30
x
x[c(4,5)]<-10
x
x[x<=15]<-20
x


x<-seq(1:10)
sum(x) #합계
mean(x) #평균
var(x) #분산
sd(x) #표준편차
sqrt(x) #제곱근
length(x) #백터의 크기
x<-c(-10,11,-20)
abs(x) #절대값

#NULL, NA(not available), NaN(not a number), INF(infinite:무한대, 불능)
x<-NULL
x

y<-c(10,20,2,NA,10,20)
y

z<-10/0
z

n<-0/0
n