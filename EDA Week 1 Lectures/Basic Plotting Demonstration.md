## Exploring Defaults
#### Simulate some data and plot a histogram
``` r
x <- rnorm(100)
hist(x)
```

>Note that the x axis is the object name and the y axis is "Frequency" by default

#### Generate some more data and plot a scatterplot
``` r
y <- rnorm(100)
plot(x, y)
```

#### The axis labels by default are the object names
``` r
z <- rnorm(100)
plot(x, z)
```

#### The default margins are 5.1, 4.1, 4.1, 2.1 going bottom, left, top, right
``` r
par(mar=c(2, 2, 2, 2))
plot(x, y)
```
#### Note that you can totally run your axis labels off the screen
``` r
par(mar=c(4, 4, 2, 2))
plot(x, y)
```

#### Plotting symbol
``` r
plot(x, y, pch=20) # little filled circles
plot(x, y, pch=19) # slightly larger filled circles
plot(x, y, pch=2)  # triangles
plot(x, y, pch=3)  # + signs
plot(x, y, pch=4)  # X
```

#### Show points examples
``` r
pchShow(c("o","O","0"), cex = 1.5) # for the list of points
```
>Symbols 21-25 have a boundry (col argument) and fill (bg argument)

#### Anyway...
``` r
x <- rnorm(100)
y <- rnorm(100)
plot(x, y, pch=20)
```

#### Add a title
``` r
title("Scatterplot")
```

#### Add some text
``` r
text(-2, -2, "Label")
```

#### Add a legend
``` r
legend("topleft", legend="Data", pch=20)
```

#### Plot a line (from linear model)
``` r
fit <- lm(y ~ x)
abline(fit)
```

#### Adjust thickness of line
``` r
abline(fit, lwd=3)
```

#### Change the line color
``` r
abline(fit, lwd=3, col="blue")
```

#### Set it all up at once
``` r
plot(x, y, xlab="Weight", ylab="Height", main="Scatterplot", pch=20)
legend("topright", legend="Data", pch=20)
fit <- lm(y ~ x)
abline(fit, lwd=3, col="red")
```

#### More than one plot on the page
``` r
z <- rpois(100, 2)
```

#### z vs x and y vs x on the same canvas
``` r
par(mfrow=c(2, 1))
plot(x, y, pch=20)
plot(x, z, pch=19)
```

#### Margins are too large
``` r
par("mar")
```

#### Change the margins
``` r
par(mar=c(2, 2, 1, 1))
plot(x, y, pch=20)
plot(x, z, pch=19)
```

#### Reorient them left to right
``` r
par(mfrow=c(1, 2))
plot(x, y, pch=20)
plot(x, z, pch=19)
```

#### Need to fix the margins again
``` r
par(mar=c(4, 4, 2, 2))
plot(x, y, pch=20)
plot(x, z, pch=19)
```

#### 4 plots on a page (mapped by row, column)
``` r
par(mfrow=c(2, 2))
plot(x, y) # upper left
plot(x, z) # upper right
plot(z, x) # lower left
plot(y, x) # lower right
```

#### by column, row
``` r
par(mfcol=c(2, 2))
plot(x, y) # upper left
plot(x, z) # lower left
plot(z, x) # upper right
plot(y, x) # lower right
```

## Points function (for annotation)
#### Reset the canvas
``` r
par(mfrow=c(1, 1))
```
#### Generate some data
``` r
x <- rnorm(100)
y <- x + rnorm(100)
g <- gl(2, 50, labels=c("Male", "Female"))
str(g) # Factor w/ 2 levels "Male","Female": 1 1 1 1 1 1 1 1 1 1 ...
```

#### If you just plot x and y, you can't see who's male and who's female
``` r
plot(x, y)
```

#### Colorize the points by adding the data to the blank plot region by gender
``` r
plot(x, y, type="n") # Type "n" means generate a blank plot based on the data
```

#### Add each gender individually. Subsetting is the key!
``` r
points(x[g == "Male"], y[g == "Male"], col="green")
points(x[g == "Female"], y[g == "Female"], col="blue")
```

#### You can also change the symbol
``` r
points(x[g == "Female"], y[g == "Female"], col="blue", pch=19)
```