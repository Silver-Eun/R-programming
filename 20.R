# scatterplot

# A chart showing the relationship between variables
# by plotting the values of two variables on a coordinate plane.

# plot(x, y)

attach(mtcars)
plot(wt, mpg, main = 'scatterplot Example',
      xlab = 'Car weight', ylab = 'miles per Gallon', pch = 19)

# kernel Density plot
# plot(density(x)), x = vector

d<-density(mtcars$mpg)
plot(d)

polygon(d, col = 'red', border = 'blue')

Orange$Tree<-as.numeric(Orange$Tree) # factor -> numeric
max(Orange$Tree)

ntrees<-max(Orange$Tree)
xrange<-range(Orange$age)
yrange<-range(Orange$circumference)

plot(xrange, yrange, xlab = 'Age(days)',
     ylab='Circumsference(mm)')

colors<-rainbow(ntrees)
linetype<-c(1:ntrees)

plotchar<-seq(18, 18+ntrees, 1)

# subset

subset(Orange, Tree==2)

for(i in 1:ntrees){
  tree<-subset(Orange, Tree==i)
  lines(tree$age, tree$circumferencee, type='b', lwd=1.5,
        lty=linetype[i], col=colors[i], pch=plotchar[i])
}

title('Orange Tree Growth', 'Example of line plot')

legend(xrange[1], yrange[2], 1:ntrees, cex=0.8, col = colors,
       pch=plotchar, lty = linetype, title = "Tree", bg='yellow')

# legend(x,y,legend,cex,col,bg,pch,lty)
