# box plot : max, min, median
# boxplot(x, data, main, xlab, ylab, col)
# data = dataframe


quakes

mag<-quakes$mag
mag

min(mag)
max(mag)

median(mag)

quantile(mag)

boxplot(mag, main='Seismic intensity distribution',
        xlab='quakes', ylab = 'number of occurrences',
        col = 'orange')

mtcars

attach(mtcars)

boxplot(mpg~cyl, data = mtcars , main = 'car mileage data',
        xlab = 'numb of cylinder', ylab = 'Miles per Gallon')

detach(mtcars)
