library(dplyr)
library(gapminder)
select(gapminder, country, year, lifeExp)
filter(gapminder, country=="Croatia")

summarise(gapminder, pop_avg=mean(pop))
summarise(group_by(gapminder, continent), pop_avg = mean(pop))
summarise(group_by(gapminder,continent, country), pop_avg=mean(pop))
gapminder %>% group_by(continent, country) %>% summarise(pop_avg=mean(pop))

temp1 = filter(gapminder, country=="Croatia")
temp2 = select(temp1, country, year, lifeExp)
temp3 = apply(temp2[,c("lifeExp")],2,mean)
temp3
gapminder %>% filter(country=="Croatia") %>% select(country,year,lifeExp) %>% summarize(lifeExp_avg = mean(lifeExp))

# Q1
gapminder %>% filter(country == "Korea, Rep.") %>% select(year, country, gdpPercap, lifeExp)
gapminder %>% filter(country == "China") %>% select(year, country, gdpPercap, lifeExp)
gapminder %>% filter(country == "Japan") %>% select(year, country, gdpPercap, lifeExp)

# Q2
gapminder %>% filter(continent=="Africa") %>% group_by(year) %>% summarize(s=sum(pop)) -> s1
gapminder %>% filter(continent=="Europe") %>% group_by(year) %>% summarize(s=sum(pop)) -> s2
s1$s > s2$s
s1[s1$s>s2$s, "year"]

# Q3
gapminder_unfiltered %>% group_by(country) %>% summarize(n=n()) %>% filter(n>12) %>% arrange(desc(n))