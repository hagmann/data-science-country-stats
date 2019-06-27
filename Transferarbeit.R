#install.packages(c("ggplot2","magrittr","tidyr","stringr","dplyr","fread","tidyverse","readr","gapminder"))
#install.packages("dplyr")

library(magrittr)
library(tidyr)
library(stringr)
library(fread)
library(tidyverse)

library(gapminder)
library(ggplot2)
library(dplyr)


summary(gapminder)
data(gapminder)
max(gapminder$year)


attach(gapminder)
min(year)
max(year)

mean(pop)
pop
hist(lifeExp)
hist(log(pop))


plot(x=lifeExp,y=log(gdpPercap),main="Zusammenhang Lebenserwartung und BIP pro Kopf weltweit zwischen 1952 und 2007, alle Länder", xlab="Lebenserwartung in Jahren",ylab="BIP pro Kopf", col="black")


plot(x=continent,y=gdpPercap)

plot(x=continent,y=gdpPercap,type="bar")


# Top 10 GDP - Country, 2007


rowsOnly2007 <- filter(gapminder,gapminder$year == "2007")

rowsOnly2007 <- rowsOnly2007[order(-rowsOnly2007$gdpPercap),]

top10gdp <- head(rowsOnly2007)

ggplot(head(top10gdp), aes(x=country,y=as.factor(top10gdp$gdpPercap))) + geom_bar(stat ="identity")


# Filter specific data
switzerland <- filter(gapminder, gapminder$country=="Switzerland")


# Lebenserwartung Schweiz 
plot(x=switzerland$year,y=switzerland$lifeExp,type="l",ylim=c(68,100),main="Entwicklung der Lebenserwartung in der Schweiz 1952 - 2007") + geom_bar(stat ="identity") + ylim(NA,100)


# Bevölkerungsentwicklung
plot(x=switzerland$year,y=switzerland$pop,type="l",main="Bevölkerungsentwicklung Schweiz 1952 - 2007", ylab="Bevölkerung",xlab="Jahr") + geom_bar(stat ="identity") + ylim(NA,100)




data2017 <- read.csv("2017.csv")
head(data2017)



data2016 <- read.csv("API_NY.GDP.PCAP.CN_DS2.csv")
na.omit(data2016)
head(data2016)


data2016 <- data2016 %>% select("Country.Name","X2016")
head(data2016)

