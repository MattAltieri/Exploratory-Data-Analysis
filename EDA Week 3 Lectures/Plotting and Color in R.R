## colorRamp

pal <- colorRamp(c("red", "blue"))
pal(0)
pal(1)
pal(0.5)
pal(seq(0, 1, len=10))

## colorRampPalette

pal <- colorRampPalette(c("red", "yellow"))
pal(2)
pal(10)

## RColorBrewer

library(RColorBrewer)
cols <- brewer.pal(3, "BuGn")
cols
pal <- colorRampPalette(cols)
image(volcano, col=pal(20))

## The smoothScatter function

x <- rnorm(10000)
y <- rnorm(10000)
smoothScatter(x, y)

## Scatterplot with no transparency

plot(x, y, pch=19)

## Scatterplot with transparency

plot(x, y, col=rgb(0, 0, 0, 0.2), pch=19)