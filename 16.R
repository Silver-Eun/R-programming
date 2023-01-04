# attach function, save plot as img file

attach(mtcars)

mpg

am

vs

detach(mtcars)

mpg

attach(mtcars)

plot(wt, mpg, bty='o')
#bty ; l(alphabet), 0(alphabet), 7, u, ]
# default value = o

title('Correlation between fuel consumption and weight')

x<-(0:20)*pi/10
y=cos(x)

png('myGraph.png', width = 400, height = 300, pointsize = 12)

plot(x,y)

ysin = sin(x)
ysin2 = sin(x)^2

par(mfrow=c(2,2))

plot(x, y, type='p')
plot(ysin, ysin2, type='l')
plot(x,y, type = 'b')
plot(x,y, type='p', pch=10, col='red')

dev.off()
