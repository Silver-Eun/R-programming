# *************
# 함수
# *************

# 함수를 만드는 함수는 function(인자, 인자, ....)

# 함수를 만드는 방법은

# 함수명<-function(인자, 인자, ....){
#   명령들
# }

inch_to_cm<-function(inch){ # inch_to_cm 함수를 생성
  cm<-inch*2.54
  return(cm)
}

inch_to_cm(5) # 함수의 호출


p<-function(x, y){
  print(x)
  print(y)
}

p(10, 20)

p(y=1, x=4)

g<-function(z, ...){ # ...인자 : 임의의 인자들을 받아서 다른 함수에 넘겨줌
  print(z)
  p(...)
}

g(100, 20, 30)


f<-function(x, y){
  print(x)
  
  d <-function(y){
    print(y)
  }
  
  d(y)
}

f(1000, 2000)

d(99)

# ***************************************
# 스코프(scope) : 번수의 사용 범위
# ***************************************

n<-100 # 변수를 선언. 콘솔에서 선언한 변수를 전역 변수
n
f<-function(){ # 콘솔애서 선언한 변수는 모든 곳에서 사용 가능
  print(n)
}

f()
a<-20

fa<-function(){ # 함수 내부에서 변수 선언이 되었을 경우에는 그 변수의 범위는 함수 
                # 내부에서만 함수 외부에서 똑같은 변수가 있더라도 내부의 변수가 우선
  a<-30 # 로컬 변수
  print(aaa)
}

fa()

aaa

yy<-200

fy<-function(yy){
  print(yy)
}

fy(1)
