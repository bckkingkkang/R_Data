str(airquality)
head(is.na(airquality))
table(is.na(airquality))
table(is.na(airquality$Temp))
table(is.na(airquality$Ozone))
mean(airquality$Temp)
mean(airquality$Ozone)
air_narm = airquality[!is.na(airquality$Ozone),]
air_narm
mean(air_narm$Ozone)
air_narm1 = na.omit(airquality)
mean(air_narm1$Ozone)
mean(airquality$Ozone, na.rm=T)

table(is.na(airquality))
table(is.na(airquality$Ozone))
table(is.na(airquality$Solar.R))
air_narm = airquality[!is.na(airquality$Ozone) & !is.na(airquality$Solar.R),]
mean(air_narm$Ozone)

# Q1
library(MASS)
Cars93
table(is.na(Cars93))
# Q2
mean(Cars93$Luggage.room, na.rm=T)*28.316847 # 1세제곱피트는 28.316847 리터
