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



# Lebenserwartung Schweiz 
# Filter specific data
switzerland <- filter(gapminder, gapminder$country=="Switzerland")
usa <- filter(gapminder, gapminder$country=="United States")
plot(x=switzerland$year,y=switzerland$lifeExp,type="l",ylim=c(68,100),main="Entwicklung der Lebenserwartung in der Schweiz 1952 - 2007",xlab="Jahr",ylab="Lebenserwartung in Jahren") + geom_bar(stat ="identity") + ylim(NA,100)
lines(x=usa$year,y=usa$lifeExp,type="l",ylim=c(68,100),main="Entwicklung der Lebenserwartung in der Schweiz 1952 - 2007",xlab="Jahr",ylab="Lebenserwartung in Jahren",col="red") + geom_bar(stat ="identity") + ylim(NA,100)
legend("topleft",
       legend=c("Schweiz","USA"),
       col=c("black","red"),
       pch = c(17,19))


# TODO: plot 2 layer on the same line chart
ggplot(gapminder, aes(x=gapminder$year)) +
  geom_line(aes(y=switzerland$lifeExp), colour="red") +
  geom_line(aes(y=usa$lifeExp), colour="green")




# Bevölkerungsentwicklung
plot(x=switzerland$year,y=switzerland$pop,type="l",main="Bevölkerungsentwicklung Schweiz 1952 - 2007", ylab="Bevölkerung",xlab="Jahr") + geom_bar(stat ="identity") + ylim(NA,100)



# weitere Datenquelle
data2017 <- read.csv("2017.csv")
head(data2017)
plot(x=data2017$Happiness.Score,y=data2017$Economy..GDP.per.Capita.,main="Zusammenhang der Zufriedenheit mit dem BIP pro Kopf",xlab="Zufriedenheits-Index",ylab="BIP pro Kopf")


# Top 10 GDP - Country, 2017
data2017_sorted <- data2017[order(-data2017$Economy..GDP.per.Capita.),]
data2017_sorted <- head(data2017_sorted,n=10L)data2017_sorted
data2017_sorted
barplot(data2017_sorted$Economy..GDP.per.Capita., main="Top 10 Länder, BIP pro Kopf", names.arg=data2017_sorted$Country)


# Zusammenhang zwischen Korruption und Zufriedenheits-Index
plot(x=data2017$Happiness.Score,y=log(data2017$Freedom),main="Zusammenhang zwischen Zufriedenheit und Freiheit", xlab="Zufriedenheits-Index",ylab="Freiheits-Index", col="black")




