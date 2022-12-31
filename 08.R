# *************
# 제어문
# *************

# if문 : 조건문
# if(조건) {
#  조건이 참인 경우
# }else{
# 조건이 거짓인 경우
#}

if(TRUE){
  print('TRUE')
  print('Hello R')
}else{
  print('FASLE')
  print('world')
}


# 반복문 : for 문, while문

# for문 사용법
# for(var in 벡터값){}
# 명령문
# }
for ( i in 1:10){
  print(i)
}

sum<-0
x<-c(1,3,5,7)

for(i in x){
  sum<-sum+i
}

sum

# while문 사용법
# while(조건){ 조건에 맞지 않으면(FALSE) 블럭을 빠져 나옴
# 명령문
#}

sum<-0
i<-1

while(i<10){
  sum<-sum+i
  i<-i+2
}

print(sum)

# break문 : 반복 도중에 반복문(블럭)을 벗어나기 위해 사용

sum<-0
x<-seq(1,10)

for(i in x){
  sum<-sum+i
  if(sum > 20)
    break
}

print(i)
print(sum)

# next 문 : 반복문 내에서 next를 만나면 그 이후의 명령은 수행하지 않고 반복문을 계속 수앻

sum<-0
x<-seq(1,10)

for(i in x){
  if(i%%2 == 0)
    next
  sum<-sum+i
}

print(i)
print(sum)