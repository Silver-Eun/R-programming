
# treemap

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
        index=c('NACE2','NACE3'),vcolor='employee',vsize='employees'
        ,type='index')

treemap(business[business$NACE1=='F - Construction',],
        index=c('NACE2','NACE3'),vcolor='turnover',vsize='employees'
        ,type='index')

treemap(business[business$NACE1=='F - Construction',],
        index=c('NACE2','NACE3'),vcolor='empoyees.prev',vsize='employees'
        ,type='comp')

treemap(business[business$NACE1=='F - Construction',],
        index=c('NACE2','NACE3'),vsize='turnover',type='depth')

# fransform

height<-c(175,159,166,189,171,173,179,165,180,170)
weight<-c(62,55,59,75,61,64,63,65,70,60)
hwdf<-data.frame(height,weight)
hwdf

#BMI, (weight/(height/100)^2)

bmi<-hwdf$weight/(hwdf$height/100)^2
bmi
hwdf$bmi<-bmi
hwdf

# how to use transform() function
# transform(dataframe,new variable=equation)

hwdf<-transform(hwdf, bmi2=weight/(height/100)^2)

business<-transform(business,available=factor(!is.na(turnover)),y=1)
treemap(business, index=c('NACE1','NACE2'),vsize="y",
        vcolor=avialable,type='categorical')

nlevels(business$NACE1)
rainbow(21)

business$color<-terrain.colors(nlevels(business$NACE1))[business$NACE1]
business
treemap(business, index=c('NACE1', 'NACE2'),vsize="employees",
        cvolor='color',type='color')