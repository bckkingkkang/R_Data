library(dplyr)
library(ggplot2)
install.packages("gridExtra")
library(gridExtra)
install.packages("Solar.R")

ucla = read.csv('https://stats.idre.ucla.edu/stat/data/binary.csv')
m = glm(admit~., data=ucla, family=binomial)
s=data.frame(gre=c(376), gpa=c(3.6), rank=c(1))
predict(m,newdata=s, type='response')

s= data.frame(gre=c(376), gpa = c(3.6), rank=c(2))
predict(m, newdata=s, type = 'response')

s = data.frame(gre = c(376), gpa = c(3.6), rank = c(3))
predict(m, newdata=s, type='response')

s = data.frame(gre = c(376), gpa = c(3.6), rank = c(4))
predict(m, newdata=s, type='response')

s = data.frame(gre = c(376), gpa = c(3.6), rank = c(5))
predict(m, newdata=s, type='response')

for(r in 1:5) {
  s = data.frame(gre=c(376), gpa = c(3.6), rank=c(r)) 
    predict(m, newdata=s, type='response')
}