# *************
# 요인(Factor)
# *************

# factor : 범주형(categorical) 변수를 위한 데이터 타입
# factor() 함수를 이용해서 생성

sex <- factor('m',c("m","f"))
sex

nlevels(sex) # 범주의 수를 출력하는 함수
levels(sex) # 범주의 목록을 출력하는 함수
levels(sex)[1]

levels(sex)<-c("male","female")
sex

ordered(c('L','M','H'))
ordered(c("L","M","H"))

factor(c("a","b","c"), ordered=TRUE)

t <-factor('L',c('L','M','H'))
t

t <-factor('L',c('L','M','H'), ordered=TRUE)
t
