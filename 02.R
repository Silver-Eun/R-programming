# 산술연산자 : 사칙연산(+,-,*,/), 거듭제곱(^또는**), 나머지값 연산자(%%), 몫(%/%)
a<-c(1,2,3,4)
b<-c(2,3,4,5)
c<-c(1,2)
d<-c(1,2,3,4,5)
e<-c(3)

a+b
a+c
d+c
d+e
a+2
b/2
c/a

x<-c("A","B","C")
y<-c("A",1,2)
y+1
x+1

#비교연산자 : <, <=, >, =<, ==, !=

x<-4>5
x
y<-c(10,20,30)
z<-y<10
z<-y<=10
z

#논리연산자 : |(또는), %(그리고AND), !(NOT), isTRUE(x)
x<-TRUE
y<-FALSE

x|y #R언어는 대소문자를 구별하다
x|y
x&y
x<-10 #x값이 0이 아닌 숫자이기 때문에 TRUE로 인식
!x
aa<-0
isTRUE(aa) #aa가 TRUE값인지를 확인인
isTRUE(x)

a<-TRUE
b<-FALSE

isTRUE(a)
isTRUE(b)

isTRUE(10)
isTRUE(0)

!aa #aa는 0값을 갖기 때문에 FALSE로 인식

z<-c(TRUE, FALSE, FALSE)
z|y

x<-c(1,2,3)
q<-c(x,10)
q

# subsetting(=sub-vector)
x[2:3]
mean(x)
mean(x[2:3])
