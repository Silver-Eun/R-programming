# 바차트(막대차트)

h<-c(83,56,77,64)

team<-c("A팀","B팀","C팀","D팀")

# 바차트를 만드는 함수 : barplot()
# 사용법
# barplot(x, width = , names.arg = , horiz = , col = , main = ,
#         sub = , xlab = , ylab = , xlim = , ylim = )

# x : 막대의 크기를 표현하는 벡터
# width : 막대의 너비
# names.arg : 막대 아래에 표시될 이름에 대한 벡터
# horiz : 수평 막대 또는 수직 막대를 표시하기 위한 옵션(FALSE : 수직, TRUE : 수평)
# col : 막대 색갈 지정(기본 값은 gray)
# main : 전체 제목
# sub : 부제목
# xlab : x축 라벨
# ylab : y축 라벨
# xlim : x축 크기
# ylim : y축 크기

barplot(h, names.arg = team, col = rainbow(length(h)),
        main = "팀별 업무 수행 성적", xlab="부서", ylab="업무성적", ylim=c(0,100))

bp<-barplot(h, names.arg = team, col = rainbow(length(h)),
            main = "팀별 업무 수행 성적", xlab="부서", ylab="업무성적", ylim=c(0,100))

text(x=bp, y=h, labels = round(h, 0), pos = 3)

# pos = 3 : 막대 끝 위쪽에 표시
# pos = 1 : 막대 끝선 아래 쪽에 표시
# pos = 2 : 막대 끝서에서 왼쪽에 표시
# pos = 4 : 막대 끝선에서 오른쪽에 표시

barplot(h, names.arg = team, col = rainbow(length(h)), main = "팀별 업무 수행 성적",
        horiz=TRUE, width=1, xlab="업무 성적", ylab="부서", xlim=c(0,100))


mtcars

cnt<-table(mtcars$gear)
barplot(cnt, main="자동차 유통", xlab="기어의 수")

barplot(cnt, main="Car Distribution", col = rainbow(length(cnt)),
        horiz=TRUE, names.arg = c("3Gears","4Gearrs", "5Gears"), xlim=c(0,20))
