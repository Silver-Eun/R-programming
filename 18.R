# histogram, hist()

data()

Nile

hist(Nile)

#hist(x, breaks, freq, probability, main, xlim, ylim, col)

quakes

mag<-quakes$mag
mag

colors<-c('red', 'orange', 'green', 'blue', 'yellow', 'navy', 'violet')

hist(mag, main = 'Seismic intensity distribution',
     xlab='earthquake intensity',
     ylab='number of occurrences', col=colors,
     breaks=seq(4,6.5, by=0.5))

hist(mag, main='Seismic intensity distribution', 
     xlab='earthquake intensity',
     ylab='relative frequency', col=colors,
     breaks=seq(4,6.5, by=0.5),
     freq = FALSE)

fit<-hist(mag, main='Seismic intensity distribution', 
     xlab='earthquake intensity',
     ylab='relative frequency', col=colors,
     breaks='Sturges',
     freq = FALSE)

# Line chart

#lines(x,t, type=)
# can't draw graph function itself, after declaring plot.
# type = p, l, 0(overplotted point & lines),
# b, c(empty), s, S, h, n(nothing)

x<-c(1:5); y<-x

plot(x,y, type = 'n')

lines(x,y,type = 'o')

par(pch = 22, col = 'red')

par(mfrow=c(2,4))
opts=c('p','l','o','b','c','s','S','h')

for (i in 1:length(opts)){
  head = paste('type =', opts[i])
  plot(x,y,type = 'n', main = head)
  lines(x,y,type=opts[i])
}

