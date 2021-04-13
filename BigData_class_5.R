chick_new = ChickWeight
boxplot(chick_new)
boxplot(chick_new)$stats
chick_new$weight = ifelse(chick_new$weight < 35 | chick_new$weight > 309 , NA, chick_new$weight)
mean(chick_new$weight, na.rm =T)