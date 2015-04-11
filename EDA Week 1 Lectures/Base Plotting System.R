###############################################################################
# Simple Base Graphics: Histogram
library(datasets)
hist(airquality$Ozone)

# Simple Base Graphics: Scatterplot
library(datasets)
with(airquality, plot(Wind, Ozone))

# Simple Base Graphics: Boxplot
library(datasets)
airquality <- transform(airquality, Month=factor(Month))
boxplot(Ozone ~ Month, airquality, xlab="Month", ylab="Ozone (ppb)")

# Add a title
library(datasets)
airquality <- transform(airquality, Month=factor(Month))
with(airquality, plot(Wind, Ozone))
title(main="Ozone and Wind in New York City")

# Plot points from May in a different color w/ points function
library(datasets)
airquality <- transform(airquality, Month=factor(Month))
with(airquality, plot(Wind, Ozone, main="Ozone and Wind in New York City"))
with(subset(airquality, Month == 5),
     points(Wind, Ozone, col="blue")) # re-adds the points

# More subsetting w/ points to prove a point
library(datasets)
airquality <- transform(airquality, Month=factor(Month))
with(airquality, plot(Wind, Ozone, main="Ozone and Wind in New York City",
                      type="n"))
with(subset(airquality, Month == 5),
     points(Wind, Ozone, col="blue")) # re-adds the points
with(subset(airquality, Month != 5),
     points(Wind, Ozone, col="red"))
legend("topright", pch=1, col=c("blue", "red"), legend=c("May",
                                                         "Other Months"))

# Add regression line to scatter plot
library(datasets)
airquality <- transform(airquality, Month=factor(Month))
with(airquality, plot(Wind, Ozone, main="Ozone and Wind in New York City",
                      pch=20))
model <- lm(Ozone ~ Wind, airquality)
abline(model, lwd=2)

# Multiple base plots
library(datasets)
airquality <- transform(airquality, Month=factor(Month))
par(mfrow=c(1, 2))
with(airquality, {
    plot(Wind, Ozone, main="Ozone and Wind")
    plot(Solar.R, Ozone, main="Ozone and Solar Radiation")
})

# Even more base plots
library(datasets)
airquality <- transform(airquality, Month=factor(Month))
par(mfrow=c(1, 3), mar=c(4, 4, 2, 1), oma=c(0, 0, 2, 0))
with(airquality, {
    plot(Wind, Ozone, main="Ozone and Wind")
    plot(Solar.R, Ozone, main="Ozone and Solar Radiation")
    plot(Temp, Ozone, main="Ozone and Temperature")
    mtext("Ozone and Weather in New York City", outer=T)
})
###############################################################################