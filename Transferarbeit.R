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


# GDP pro Kontinent
plot(x=continent,y=gdpPercap)



# Top 10 GDP - Country, 2007
rowsOnly2007 <- filter(gapminder,gapminder$year == "2007")
rowsOnly2007 <- rowsOnly2007[order(-rowsOnly2007$gdpPercap),]
top10gdp <- head(rowsOnly2007)




# Lebenserwartung Schweiz 
# Filter specific data
switzerland <- filter(gapminder, gapminder$country=="Switzerland")
plot(x=switzerland$year,y=switzerland$lifeExp,type="l",ylim=c(68,100),main="Entwicklung der Lebenserwartung in der Schweiz 1952 - 2007") + geom_bar(stat ="identity") + ylim(NA,100)



# Bevölkerungsentwicklung
plot(x=switzerland$year,y=switzerland$pop,type="l",main="Bevölkerungsentwicklung Schweiz 1952 - 2007", ylab="Bevölkerung",xlab="Jahr") + geom_bar(stat ="identity") + ylim(NA,100)




# weitere Datenquelle
data2017 <- read.csv("2017.csv")
head(data2017)
plot(x=data2017$Happiness.Score,y=data2017$Economy..GDP.per.Capita.,main="Zusammenhang der Zufriedenheit mit dem BIP pro Kopf",xlab="Zufriedenheit",ylab="BIP pro Kopf")
