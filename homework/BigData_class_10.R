library(ggplot2)
library(dplyr)
str(trees)
summary(trees)
install.packages("scatterplot3d")
library(scatterplot3d)
scatterplot3d(trees$Girth, trees$Height, trees$Volume)
m = lm(Volume~Girth+Height,data=trees)
m
s =scatterplot3d(trees$Girth, trees$Height, trees$Volume, pch=20, type='h', angle=55)
s$plane3d(m)
m = lm(trees$Volume~poly(trees$Girth,2)+poly(trees$Height,2))
m
s =scatterplot3d(trees$Girth, trees$Height, trees$Volume, pch=20, type='h', angle=55)
