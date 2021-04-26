# Q1
sum = 0 
for(i in c(1:100)) {
  if(i%%3==0) {
    if(i%%4!=0)
      sum = sum + i
  }  
}
sum

# Q2
my <-function(n,x) {
  for(i in c(1:n)) {
    
  }
}

# Q3
install.packages("hflights")
library(hflights)
table(is.na(hflights))
hflights
boxplot(hflights$AirTime)$stats
tail(hflights$AirTime)
