# animation using image

# install packages to load png
# package name = png, install.packages("png")
# library(png)

# route set function
# paste('route', 'file name', 'extension', sep='')

# readPNG(source) : reading image of pngpocket
# parameter source : file name

# rasterImage() : show image
# how to use : rasterImage(image, xleft, ybottom, xright, ytop)
# image : image file name
# xleft, ybottom, xright, ytop : x axis left, y axis bottom,
# x axis right, y axis top

# dev.off() : close console

path<-'home/aaa/Document'
path.user<-'aaa'
path.filename<-'result.jpg'

fullpath<-paste(path, path.user, path.filename)
fullpath

fullpath<-paste(path, path.user, path.filename, sep="")
fullpath

fullpath<-paste(path, path.user, path.filename, sep='/')
fullpath

install.packages('png')
library(png)

ani.options(interval=0.2)

for(i in 1:9){
  img<-paste("~/test/", i, '.png', sep='') # set file route
  img<-readPNG(img)
  
  plot.new() # new graphic frame
  rect(0,0,0.5,1, col='white') # graphic frame area
  
  rasterImage(img, 0,0,0.5,1) # print image
  
  ani.pause()
}

dev.off()