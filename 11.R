# *************
# 차트
# *************

# S그룹의 자회사별 매출액을 파이차트로 표시

# A회사 : 100억
# B회사 : 50억
# C회사 : 10억
# D회사 : 17억

library('graphics')

x<-c(100,50,10,17) # 매출액을 x에 할당

company<-c("A회사", "B회사", "C회사", "D회사")

# 파이(pie)차트를 출력하기 위한 함수
# pie() : pie(x, labels, clockwise=FASLE, init.angle=if(clockwise)90 else 0, col=NULL, main=NULL)

pie(x, labels = company, main="S그룹의 자회사별 매출")

pie(x, init.angle = 90, labels = company, main="S그룹의 자회사별 매출")

p<-round(x/sum(x)*100) # 백분율로 표시하기 위한 식

company<-paste(company, p) # 회사명에 %값을 붙임

company<-paste(company, '%')

pie(x, labels = company, init.angle = 90, col=rainbow(length(x)), main = "S그룹의 매출액 현황")

length(x)

rep(1,12)


# 칼라 팔레트 이용하기
# rainbow(무지개)
# heat.colors 난색(적색과 황색 계열)
# terrain.colors 지구의 지형 색
# topo.colors 청색 계열의 색
# cm.colors 시안(cyan)과 핑크 계열

pie(rep(1,12), labels<-seq(1,12), col=rainbow(12))

pie(rep(1,12), labels<-seq(1,12), col=heat.colors(12))

pie(rep(1,12), labels<-seq(1,12), col=terrain.colors(12))

pie(rep(1,12), labels<-seq(1,12), col=topo.colors(12))

pie(rep(1,12), labels<-seq(1,12), col=cm.colors(12))

# graphics : R 기본 파트를 출력하는 다양한 기능을 제공하는 패키지
# plotrix : 3D차트를 포함하는 다양한 차트 옵션을 제공하는 패키지

library(plotrix)
demo(plotrix)

demo(graphics)

pie3D(x, labels = company, explode = 0.1, col = topo.colors(length(x)), labelcex = 1, main = "S그룹의 자회사 매출 현황")
