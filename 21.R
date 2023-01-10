# sample function

sample(1:10, 4)

sample(1:100, 10)

sample(letters, 5, replace=TRUE)

sample(1:10, 5, replace = TRUE)

set.seed(1)

sample(1:10, 5)

set.seed(2)
sample(1:10, 5)

x<-c(1:10)
y<-x

plot(x,y, pch=3, xlab = "xlab title", ylab='ylab title')

# control the parameter spacing of the par()
# mar(bottom, top, left, right)
# mgp(axis title margin, axis rable margin, axis line)
# tcl = scale adjustment

par(mar=c(5, 4, 4, 2), mgp=c(3, 1, 0), tcl = -0.5)

# animation
# install.packages("animation")
library(animation)

# ani.options() : setting animation options
# parameter of ani.options()
# interval ~ animation interval(second)
# nmax ~ make animation frame, default : 50
# ani.width(px)
# ani.height(px)
# return value : list of parameters set as options

# ani.pause() : wait for a given amount of time & erase display
# default : ani.pause('interval')

myani <-function(){
  n = ani.options('nmax')
  x = sample(1:n)
  y = sample(1:n)
  
  for(i in 1:n){
    plot(x[i], y[i], cex = 3, col = 'red', pch = 20,
         lwd = 2, ylim=c(0,50), xlim=c(0,50))
    
    ani.pause()
  }
}

par(mar=c(3, 3, 1, 0.5), mgp=c(1.5, 0.5, 0), tcl=-0.3)
myani()

plot.new() # create new graphic
rect(0, 0, 1, 1) # draw square location inside the plot

plot(1:10, type='n')
rect(0, 0, 1, 1)
rect(0, 0, 2, 2)
rect(0, 0, 3, 3)
rect(4,6,8,8, col='gold')

rect(6,3,8,4, border='gold', lwd='2', density=10, lty=2)
