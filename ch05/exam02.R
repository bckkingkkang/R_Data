install.packages("gapminder")
library(gapminder)
library(dplyr)
glimpse(gapminder)
gapminder[, c("country","lifeExp")]
gapminder[, c("country","lifeExp","year")]
gapminder[1:15, ]

gapminder[gapminder$country == "Croatia",]
gapminder[gapminder$country == "Croatia", "pop"]
gapminder[gapminder$country == "Croatia", c("lifeExp","pop")]

gapminder[gapminder$country=="Croatia"&gapminder$year>1990, c("lifeExp","pop")]

apply(gapminder[gapminder$country=="Croatia", c("lifeExp","pop")], 2, mean)

# Q1
gapminder %>% filter(country=="Korea, Rep.") %>% select(pop) %>% max()
gapminder %>% filter(country=="Korea, Rep.") %>% filter(pop==49044790)
f
# Q2
gapminder %>% filter(year==2007 & continent=="Asia") %>% select(pop) %>% sum()
