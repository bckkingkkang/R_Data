plot(women)
plot(cars)
plot(cars, col="blue")
plot(cars, col="blue", xlab='속도', ylab='거리')
plot(cars, col="blue", xlab='속도', ylab='거리', pch=18)
plot(cars, col="blue", xlab='속도', ylab='거리', pch=10)
plot(cars, col="blue", xlab='속도', ylab='거리', pch=3)
plot(cars, main ="Cars 데이터")

# 도움말 보기
?plot
help(plot)

search()
install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)
search()
library(ggplot2)
ls(package:dplyr)

# p65 chap02-06
str(iris)
head(iris,10)
plot(iris)
plot(iris$Petal.Width, iris$Petal.Length, col=iris$Species)

summary(iris)


# p72 chap02-단원문제
# Q1
?plot
Speed <- cars$speed
Distance <- cars$dist
plot(Speed, Distance, panel.first=grid(8,8), pch=0, cex=1.2, col="blue")

?summary
r1 <- example(quantile, setRNG = TRUE)
x1 <- rnorm(1)
u <- runif(1)
r2 <- example(quantile, setRNG=TRUE)
x2 <- rnorm(1)
stopifnot(identical(r1,r2))
x1; x2
lmex <- sapply(apropos("^lm", mode = "function"), example, character.only = TRUE, give.lines = TRUE) 
sapply(lmex, length)