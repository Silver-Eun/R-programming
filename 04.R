# array(배열) : 3차원 배열을 의미(R언어 한정)
# 벡터는 1차원 배열과 같다.
# 배열을 만드는 함수는 array()
# array() 함수의 인자 : array(data, dim ,dimnames)
# dim은 몇차원이 설정하는 벡터인수, dimnames는 각 차원의 이름을 나타내는 벡터인수

# 데이터 종류(Mode)
# 숫자형(numeric), 문자형(character: "" 또는 '' 표시), 논리형(), 복소수(허수), Raw

# 데이터 종류(data type, data structure)
# vector, matrix, Array, Data frame, List, Class

x<-array(1:3, dim = c(3)) #= x<-seq(1:3)
x

x<-array(1:6,dim = c(2,3)) # 1~6까지의 정수를 2행3열로 표시(열 우선)
x

y<-array(c(2,3,4,5,6,7), dim = c(2,3))
y

y[1,3]
y[,2] # 2열의 모든 값 출력
y[2,] # 2행의 모든 값 출력
y[,-3] # 3열의 값을 제외한 모든 열의 값 표시

y[1,2]<-40
y

name<-list(c("1행","2행"), c("1열", "2열", "3열"))

arr1<-array(c(2,3,4,5,12,13),dim = c(2,3), dimnames=name)

arr2<-array(1:24, dim = c(2,3,4))
arr2

# 행렬(matrix) : 2차원 배열을 행렬이라고 한다.
# 행렬을 만드는 함수는 matrix()이다.
#matrix()인자 : matrix(data, nrow, ncol|byrow, [dimnames])
# nrow : 행의수, ncol : 열의수, byrow : data를 행단위로 배치해야 할지에 대한 여부 - 기본값 FALSE


x<-matrix(1:6, nrow = 2)
x

x<-matrix(1:6, nrow = 2,byrow = TRUE)
x

x[1,3]


arr1<-c(1,2,3,4)
arr2<-c(10,20,30,40)
arr3<-c(100,200,300,400)

# cbind(column bind) : 열 단위로 벡터를 합치는 함수

x<-cbind(arr1,arr2,arr3)
x

rownames(x)<-c("1행","2행","3행","4행") # x행렬에 행의 이름을 부여
x

x[,arr1]
colnames(x)<-c("1열","2열","3열")
x
x[,2]
x[,"2열"]

#rbind(row bind) : 행 단위로 벡터를 합치는 함수
y<-rbind(arr1,arr2,arr3)
y

# 행렬의 연산(+,-,*,/)
x<-matrix(1:4, nrow=2)
x
y<-matrix(5:8,nrow=2)
y


m<-matrix(1:10,nrow=5)
m

#row별 평균값 구하기
apply(m, 1, mean)

#column별 평균값 구하기
apply(m, 2, mean)

apply(m, 1:2, function(x) x/2)

mydata<-matrix(rnorm(20), nrow=5)
mydata


apply(mydata,1, mean)

apply(mydata, 1, mean, trim=0.2) # trim=0.2 : 상위 20% 하위 20% 제외한 값

apply(mydata, 2, mean)
apply(mydata, 2, mean,trim=0.2)

length(mydata)

class(mydata)

attributes(mydata)