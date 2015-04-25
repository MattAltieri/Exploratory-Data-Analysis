## K-means clustering - example

# Random 2-dimensional data
set.seed(1234)
par(mar=c(0, 0, 0, 0))
x <- rnorm(12, mean=rep(1:3, each=4), sd=0.2)
y <- rnorm(12, mean=rep(c(1, 2, 1), each=4), sd=0.2)
plot(x, y, col="blue", pch=19, cex=2)
text(x + 0.05, y + 0.05, labels=as.character(1:12))

## kmeans()

dataFrame <- data.frame(x, y)
kmeansObj <- kmeans(dataFrame, centers=3) # 3 clusters from our intuition based
                                          # on our initial plot
names(kmeansObj)

kmeansObj$cluster

par(mar=rep(0.2, 4))
# First plot x & y and color based on their current kmeans cluster
plot(x, y, col=kmeansObj$cluster, pch=19, cex=2)
# Add the centers of each centroid cluster as a big plus, still in the same
# color
points(kmeansObj$centers, col=1:3, pch=3, cex=3, lwd=3)

## Heatmaps

set.seed(1234)
dataMatrix <- as.matrix(dataFrame)[sample(1:12),]
kmeansObj2 <- kmeans(dataMatrix, centers=3)
par(mfrow=c(1, 2), mar=c(2, 1, 2, 1))
image(t(dataMatrix)[,nrow(dataMatrix):1], yaxt="n") # Unclustered
image(t(dataMatrix)[,order(kmeansObj2$cluster)], yaxt="n") # Clustered via
                                                           # kmeans