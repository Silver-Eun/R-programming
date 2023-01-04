#PCH(plotting character) 심볼

?pch

plot(0:10, 0:10, main = "PLOT", sub = "test",
     xlab = "X-Label", ylab = "Y-Label", type = "n")

par(bg = "transparent")

#point() function : draw point

p<-c(5, 2)
points(p, pch=1, cex=2)
p<-c(6, 8)
points(p, pch=2, cex=2)
p <-c(4, 7)
points(p, pch=3, cex=2)
p<-c(9, 1)
points(p, pch=23, cex=2)

weight<-women$weight
height<-women$height

plot(height, weight, xlab='height',
     ylab='weight', pch=20, cex=1.5, col="blue", bg='yellow')

# How to put text in a graph
# using text() function

text(65, 135, 'text', col='red')

par(fg='black')

par(bg='orange')

# Hoe to put line in a graph
# using abline() function

abline(h = 135, lty = 3)

abline(v =62, lty = 3)

abline(h = 140, v = 66, lty = 4)

# using axis() function, draw line at Top Bottom Left Right

# axis(side, at, label, ...)
# side has value 1=Bottom, 2=Left, 3=Top, 4=Right

axis(1, at = 63, labels = 63, col='red')

abline(h = 140, v = 63, lty = 3)

text(64, 142, "{63, 140)", col='red')
