## Example Dataset

library(ggplot2)
str(mpg)

## ggplot2 "Hello, world!"

library(ggplot2)
qplot(displ, hwy, data=mpg)

## Modifying aesthetics

library(ggplot2)
qplot(displ, hwy, data=mpg, color=drv) # color aesthetic, auto legend placement

## Adding a geom

library(ggplot2)
qplot(displ, hwy, data=mpg, geom=c("point", "smooth"))

## Histograms

library(ggplot2)
qplot(hwy, data=mpg, fill=drv) # Only one variable creates a histogram

## Facets

library(ggplot2)
qplot(displ, hwy, data=mpg, facets=. ~ drv)

library(ggplot2)
qplot(hwy, data=mpg, facets=drv ~ ., binwidth=2)

## Simulating MAACS analyses w/ the mpg dataset

# mpg-maacs1
qplot(log(displ), data=mpg)

# mpg-maacs2
qplot(log(displ), data=mpg, fill=drv)

# mpg-maacs3
qplot(log(displ), data=mpg, geom="density")

# mpg-maacs4
qplot(log(displ), data=mpg, geom="density", color=drv)

# mpg-maacs5
qplot(log(hwy), log(displ), data=mpg)

# mpg-maacs6
qplot(log(hwy), log(displ), data=mpg, shape=drv)

# mpg-maacs7
qplot(log(hwy), log(displ), data=mpg, color=drv)

# mpg-maacs8
qplot(log(hwy), log(displ), data=mpg, color=drv, geom=c("point", "smooth"),
      method="lm")

# mpg-maacs9
qplot(log(hwy), log(displ), data=mpg, geom=c("point", "smooth"), method="lm",
      facets=. ~ drv)



# 2mpg-maacs1
qplot(log(displ), log(hwy), data=mpg, facets=. ~ drv, geom=c("point", "smooth"),
      method="lm")

# Initial ggplot setup
g <- ggplot(mpg, aes(log(displ), log(hwy)))
summary(g)

# Explicitly save and pring ggplot
p <- g + geom_point()
print(p)
# Auto-print without saving
g + geom_point()

# 2mpg-maacs2
g <- ggplot(mpg, aes(log(displ), log(hwy)))
g + geom_point() # Add points -- now this is printable

# 2mpg-maacs3
g + geom_point() + geom_smooth() # Add an auto-smooth

# 2mpg-maacs4
g + geom_point() + geom_smooth(method="lm") # Linear regression smooth

# 2mpg-maacs5
## Add a facet grid
g + geom_point() + facet_grid(. ~ drv) + geom_smooth(method="lm")

# 2mpg-maacs6
g + geom_point(color="steelblue", size=4, alpha=1/2) # Using constants

# 2mpg-maacs7
g + geom_point(aes(color=drv), size=4, alpha=1/2) # Using factors in the data

# 2mpg-maacs8
## Modifying labels
g + geom_point(aes(color=drv)) + labs(title = "MPG-MAACS Fake") + 
    labs(x=expression("log " * displ), y="log hwy")

# 2mpg-maacs9
## Customizing the smooth
g + geom_point(aes(color=drv), size=2, alpha=1/2) +
    geom_smooth(size=4, linetype=3, method="lm", se=F)

# 2mpg-maacs10
g + geom_point(aes(color=drv)) +
    theme_bw(base_family="Times")




## Notes about axis limits

# Base plotting system...
testdat <- data.frame(x=1:100, y=rnorm(100))
testdat[50, 2] <- 100 # Outlier!
plot(testdat$x, testdat$y, type="l", ylim=c(-3, 3))

# ... vs. ggplot2
g <- ggplot(testdat, aes(x=x, y=y))
g + geom_line()

## Careful how you limit your axis in ggplot2!

# If you introduct a y-limit, ggplot2 will subset the data to exclude the
# outlier
g + geom_line() + ylim(-3, 3)

## The right way to do it!

g + geom_line() + coord_cartesian(ylim=c(-3, 3))