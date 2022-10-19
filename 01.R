# 한글 설정하기 : 메뉴 - Tools - global options
# code > saving tab에서 default text encoding을 UTF-8로 설정정
# '#'는 주석 처리 기호

# library() : 패키지를 R에 로딩하는 함수
library(help = 'base')

# 패키지 추가하기
# install.packages('패키지명') 함수를 이용하여 설치
# 설치한 패키지를 삭제할 경우 remove.packages('패키지명')
install.packages('plotrix')

###도움말 기능
#help.start() 도움말 화면 표시
#help("seq") : seq 함수에 대한 도움말
# ? seq : seq 함수에 대한 도움말

### history 기능
# history() : 기본적으로 최근에 사용된 25개 명령어 목록 표시
# savehistory(file = 'myfile') : 작업 내역을 저장(디폴트 .Rhistory)
# loadhistory(file = 'myfile') : 앞에서 사용했던 작업 내용을 이용

### 작업 디렉토리
# getwd() : 현재 디렉토리

# 콘솔화면 초기화 하기 : ctrl + L

x<-c(80,80,100)

# 벡터는 동일한 데이터의 유형(숫자, 문자)의 단일값들이 일차원적으로 구성된 값
#c()함수 : concatenate, 숫자나 문자를 하나로 연결(벡터를 생성)
# <- , -> : 대입연산자(할당연산자)
# <- 대신 사용할 수 있느 함수 : assign() 함수

# assign("x", c(90,90,100))는 c<-(90,90,100)와 같은 의미
# =, <<-