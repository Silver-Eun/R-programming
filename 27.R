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