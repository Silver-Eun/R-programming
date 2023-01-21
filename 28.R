# treemap

install.packages('treemap')

library(treemap)

gnipc<-read.csv('~/GNIPC.csv',header=TRUE)
df<-data.frame(gnipc)
df

df$GNIPC<-as.numeric(df$GNIPC)

treemap(df,index=c('Economy','code'),vsize='GNIPC',
        vcolor='GNIPC',type='value')

treemap(df,index=c('Economy','code'),vsize='GNIPC',
        type='value')

data(package = .packages(all.available = TRUE))

treemap(GNI2014,index=c('continent','iso3'),vsize='population',
        vcolor='GNI',type='value')

treemap(GNI2014,index=c('continent','iso3'),vsize='population',
        vcolor='GNI',type='index')

data(business)
str(business)

business

treemap(business, index=c('NACE1','NACE2','NACE3'),
        vsize='turnover',type='index')

write.csv(business,'~/business.csv')

treemap(business[business$NACE1=='F - Construction',],
        index=c('NACE2','NACE3'),vsize='employee',type='index')

treemap(business[business$NACE1=='F - Construction',],
        index=c('NACE2','NACE3'),vsize='employee',type='value')

treemap(business[business$NACE1=='F - Construction',],
        index=c('NACE2','NACE3'),vcolor='employee',vsize='employees',type='index')

treemap(business[business$NACE1=='F - Construction',],
        index=c('NACE2','NACE3'),vcolor='turnover',vsize='employees',type='index')