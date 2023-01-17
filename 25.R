# print a map centered on an arbitrary address

gc<-geocode(enc2utf8('강원도 속초시'))
gc

cen<-as.numeric(gc)
cen
map<-get_googlemap(center<-cen, maptype='roadmap')
ggmap(map, extent='device')

names<-c('1.망상해수욕장', '2.속초해수욕장', '3.낙산해수욕장',
         '4.송지호해수욕장', '5.하조대해수욕장')

addr<-c('강원도 동해시 망상동 393-16',
        '강원도 속초시 조양동 1464-11',
        '강원도 양양군 강현면 주청리 1',
        '강원도 고성군 죽왕면 8',
        '강원도 양양군 현북면 하광정리 1')

sk<-c('서울', '광주')

gc<-geocode(enc2utf8(sk))
gc<-geocode(enc2utf8(addr))
gc

df<-data.frame(name=names, lon=gc$lon, lat=gc$lat)
df

mean(df$lon)

cen<-c(mean(df$lon), mean(df$lat))
cen

map<-get_googlemap(center=cen, maptype='roadmap', zoom=9, marker=gc)

ggmap(map)

# using goem_text() in ggplot2 packgage to print beach name

# return value of goem_text() is Layer include character
# goem_text(data,aes,size,label,...)
# data : data on Layer, aes : location coordinate(latitude, longitude)
# size : character size, default = 5, label : char to print

gmap+goem_text(data=df,aes(x=lon,y=lat), size=3, label=df$name)