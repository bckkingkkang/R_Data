avocado <- read.csv("C:/Sources/avocado.csv", header=TRUE, sep=",")
str(avocado)
(x_avg = avocado %>% group_by(region) %>% summarize(V_avg = mean(Total.Volume), P_avg = mean(AveragePrice)))
(x_avg = avocado %>% group_by(region, year) %>% summarize(V_avg = mean(Total.Volume), P_avg = mean(AveragePrice)))
(x_avg = avocado %>% group_by(region, year, type) %>% summarize(V_avg = mean(Total.Volume), P_avg = mean(AveragePrice)))

library(ggplot2)
x_avg %>% filter(region!="TotalUS") %>% ggplot(aes(year, V_avg, col=type)) + geom_line() + facet_wrap(~region)

arrange(x_avg, desc(V_avg))

x_avg1 = x_avg %>% filter(region!="TotalUS")
x_avg1[x_avg$V_avg == max(x_avg1$V_avg), ]

install.packages("lubridate")
library(lubridate)
(x_avg = avocado%>% group_by(region, year, month(Date), type)%>%summarize(V_avg=mean(Total.Volume), P_avg = mean(AveragePrice)))