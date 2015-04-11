# Base Plotting System
library(datasets)
data(cars)
with(cars, plot(speed, dist))

# Lattice System
library(datasets)
library(lattice)
# Avg Life expectancy vs avg per capita income, conditioned on the region
state <- data.frame(state.x77, region=state.region)
xyplot(Life.Exp ~ Income | region, data=state, layout=c(4, 1))

# ggplot2 System
library(ggplot2)
data(mpg)
qplot(displ, hwy, data=mpg)