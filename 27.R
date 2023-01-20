u<-read.csv("~/university.csv", header=TRUE)
u

kor<-get_map('seoul',zoom=11,maptype='watercolor')

# add Layer1 : add point
ggmap(kor)+geom_point(data=u,aes(x=LON,y=LAT,color=factor(schoolname)),size=3)

gmap<-ggmap(kor,fullpage=TRUE)+geom_point(data=u,
                                          aes(x=LON,y=LAT,color=factor(schoolname)),size=3)
# add Layer2 : add text
gmap+geom_text(data=u,aes(x=LOn+0.1,y=LAT+0.1,labe=schoolname),size=3)

# save map ggsave()

ggsave("~/uni.png")# set width,height,dpi(density, ex)1000)

pop<-read.csv('~/population.csv',header=TRUE)
pop

region<-pop$localname
region
lon<-pop$LON
lat<-pop$LAT
house<-pop$numofgeneration

df<-data.frame(region,lon,lat,house)
df

map1<-get_map(enc2utf8('대구'),zoom=7,maptype='roadmap')

map2<-ggmap(map1,fullpage=TRUE)

#add Layer1
map2+geom_point(data=df,aes(x=lon,y=lat,color=house,size=house))

ggsave('~/pop.png', scale=1,width=10.24,height7.68)

quakes

df<-head(quakes,100)

cen<-c(mean(df$long),mean(df$lat))
cen

#ifelse(condition,if condition true,if condition false)


df2<-data.frame(lon-df$long,lat-df$lat)

df2$lon<-ifelse(df2$lon>180, -(360-df2$lon),df2$lon)
df2

map<-get_googlemap(center<-cen,scale=1,maptype='roadmap',zoom=4,marker-df2)

ggmap(map,extent='device')

ggmap(map,fullpage=TRUE)+geom_point(data-df,aes(x=long,y=lat,size=mag),alpha=0.5)