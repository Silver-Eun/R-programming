# using google map API

# ggmap : packages show function google map or stamen map
# ggplot2 : package that provides functions for graphic output,
# providing rich graphic functions to visualize large amounts of data
# in dataframes

install.packages('ggmap')
install.packages('ggplot2')

library(ggmap)
library(ggplot2)

gc<-geocode('seoul')

gc<-geocode(enc2utf8('서울')) # get latitude and longitude using korean

gc

cen<-as.numeric(gc) # latitude and longitude to numeric
cen
