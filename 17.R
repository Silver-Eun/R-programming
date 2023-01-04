# using dotchart function

# dotchart(x, labels=) : x = number vector, label = table of point
# using 'groups' to grouping

attach(mtcars)

dotchart(mpg, labels = row.names(mtcars), main = 'fuel economy by car model',
         xlab = 'miles by Gallon', cex = 1)

x=mtcars[order(mpg),]
x$cyl<-factor(x$cyl)
x$color[x$cyl==4] <- 'red'
x$color[x$cyl==6] <- 'darkgreen'
x$color[x$cyl==8] <- 'blue'


dotchart(x$mpg, labels = row.names(x),
         cex=0.5, groups = x$cyl,
         main = 'Fuel economy by car model according to the number of cylinders',
         xlab = 'miles by Gallon', color=x$color)
detach(mtcars)

mtcars

# sort function, order function
data()

v1<-c(40,30,50,50,90,40,50)
v1
sort(v1) # sort in ascending order(sort the numbers themselves)

sort(v1, decreasing = TRUE) # sort in decreasing

order(v1) # print sorted index values

v1[order(v1)]

# sort <- can't use at dataframe

sort(mtcars$mpg)

mtcars[order(mtcars$mpg),]
