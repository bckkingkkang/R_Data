# airquality 데이터에 다중 선형 회귀를 적용
#변수 간의 인과관계가 불분명 -> 설명 변수와 반응 변수를 여러 조합으로 시도
#훈련 집합에 있는 샘플 3개를 뽑아 약간의 잡음을 추가하여 샘플 생성 -> 예측 수행
# p260 Q2
library(ggplot2)
library(dplyr)
library(scatterplot3d)
str(airquality)
summary(airquality)
?airquality
scatterplot3d(airquality$Solar.R,airquality$Temp,airquality$Ozone)
m = lm(Ozone~ Solar.R + Temp, data=airquality)
m
# Ozone = 0.05711 * Solar.R + 2.27847 * Temp - 145.70316
s = scatterplot3d(airquality$Solar.R, airquality$Temp, airquality$Ozone, pch=20, type='h', angle = 55)
s$plane3d(m)
