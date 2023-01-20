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