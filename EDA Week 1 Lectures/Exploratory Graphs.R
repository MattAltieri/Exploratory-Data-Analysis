pollution <- read.csv("./data/avgpm25.csv",
                      colClasses =c("numeric", "character",
                                    "factor", "numeric"
                                    ,"numeric"))
head(pollution)

# 5 (6) number summary
summary(pollution$pm25)

# boxplot
boxplot(pollution$pm25, col="blue")

# histogram
hist(pollution$pm25, col="green")
rug(pollution$pm25)

hist(pollution$pm25, col="green", breaks=100)
rug(pollution$pm25)

# overlaying features
# boxplot with horizontal line for 12 air qual std
boxplot(pollution$pm25, col="blue")
abline(h=12)

# histogram w/ median line in magenta and 12 air qual std in black
hist(pollution$pm25, col="green")
abline(v=14, lwd=2)
abline(v=median(pollution$pm25), col="magenta", lwd=4)

# barplot
barplot(table(pollution$region), col="wheat", main="Number of Counties in 
        Each Region")

# multidimensional analysis
# multiple boxplots
boxplot(pm25 ~ region, data=pollution, col="red")

# multiple histograms
par(mfrow=c(2, 1), mar=c(4, 4, 2, 1))
hist(subset(pollution, region=="east")$pm25, col="green")
hist(subset(pollution, region=="west")$pm25, col="green")

# scatterplot
with(pollution, plot(latitude, pm25))
abline(h=12, lwd=2, lty=2)

# scatterplot with region in different colors
with(pollution, plot(latitude, pm25, col=region))
abline(h=12, lwd=2, lty=2)

# multiple scatterplots
par(mfrow=c(1, 2), mar=c(5, 4, 2, 1))
with(subset(pollution, region=="west"), plot(latitude, pm25, main="West"))
with(subset(pollution, region=="east"), plot(latitude, pm25, main="East"))