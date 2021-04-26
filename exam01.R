library(gapminder)
library(dplyr)

# 연도와 대륙으로 정리한 각 대륙별 인구 총합
y <- gapminder %>% group_by (year, continent) %>% summarize(C_pop = sum(pop))
head(y, 20)

plot(y$year, y$C_pop)

#색상과 모양을 서로 다르게 지정
plot(y$year, y$C_pop, col=y$continent)

# 서로 다른 모양의 마커로 구분
plot(y$year, y$C_pop, col = y$continent, pch=c(1:5))
plot(y$year, y$C_pop, col=y$continent, pch=c(1:length(levels(y$continent))))

# 범례 개수를 숫자로 지정
legend("topleft", legend = 5, pch = c(1:5), col = c(1:5))

# 범례 개수를 데이터 개수에 맞게 지정
legend("topleft", legend = levels((y$continent)), pch=c(1:length(levels(y$continent))), col=c(1:length(levels(y$continent))))