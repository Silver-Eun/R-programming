# show legend on map

map<-get_googlemap(center<-cen, maptype='roadmap',zoom=9)
gmap<-ggmap(map,fullpage=TRUE,legend='topright')

gmap+geom_text(data=df,aes(x=lon,y=lat,color=factor(name)),size=10,
               label=seq.along(df$name))

#ggplot() functions used to visualize data

p<-ggplot(mtcars,aes(x=wt,y=mpg,label=rownames(mtcars)))

p1<-p+geom_text(angle=30,size=3,hjust=-.2,vjst=0)

p1+geom_point(aes(color=cyl, size=wt))