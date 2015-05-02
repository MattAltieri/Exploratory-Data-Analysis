pm0 <- read.table("./data/RD_501_88101_1999-0.txt", header=F, comment.char="#",
                  sep="|", na.strings="")
head(pm0)

cnames <- readLines("./data/RD_501_88101_1999-0.txt", 1)
cnames
names(pm0) <- make.names(strsplit(cnames, "|", fixed=T)[[1]])
head(pm0)

x0 <- pm0$Sample.Value

head(x0)
summary(x0)

pm1 <- read.table("./data/RD_501_88101_2012-0.txt", comment.char="#", header=F,
                  sep="|", na.strings="")

dim(pm1)

names(pm1) <- names(pm0)

head(pm1)

x1 <- pm1$Sample.Value
str(x1)

summary(x1)
summary(x0)

mean(is.na(x1))
mean(is.na(x0))

boxplot(x0, x1)
boxplot(log10(x0), log10(x1))

summary(x1)
negative <- x1<0
str(negative)

sum(negative, na.rm=T)
mean(negative, na.rm=T)

dates <- pm1$Date
str(dates)

library(lubridate)
dates <- ymd(dates)

str(dates)

hist(dates, "month")
hist(dates[negative], "month")