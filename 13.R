# stacked Bar Chart(스텍형 바 차트)

h1<-c(4, 12, 10, 6)

h2<-c(9, 5, 20, 8)

h<-rbind(h1, h2)
h

team<-c('1팀','2팀','3팀','4팀팀')

lbl<-c("2015년", "2016년")

barplot(h, names.arg = team, main = "팀별 실적", xlab = '팀명',
        ylab = '판매실적(억원)', col = c("darkblue","red"), ylim=c(0,35), legend.text=lbl)

# 그룹형 바 차트(Grouped Bar Chart)
barplot(h, main = "팁별 판매 실적",
        names.arg = team, col = c("darkblue","red"),
        ylim=c(0,35), legend.text=lbl, beside=TRUE,
        xlab = "팀명", ylab = "판매실적",
        args.legend=list(x='top'))

mtcars

cnt<-table(mtcars$vs, mtcars$gear)
barplot(cnt, main = "Gears와 VS에 따른 자동차 분포",
        xlab = "Gear의 수", col = c("darkblue","red"), 
        legend = rownames(cnt), ylim = c(0,20))