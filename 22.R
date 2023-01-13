
myani<-function(){

for(i in 10:0){
  
  plot.new()
  rect(0,0,1,1, col='gold')
  
  s = 11-i
  
  text(0.5, 0.5, i, cex=s, col=rgb(1,0,1,1))
  
  ani.pause()
  }

}

myani()

set.seed(1000)
runif(5,1,2)

sample(1:4,5)

rnorm(5)

myani2<-function(){
  while(TRUE){
    y<-runif(5)
    barplot(y,ylim=c(0,1), col=rainbow(5))
    
    ani.pause()
  }
}

myani2()
