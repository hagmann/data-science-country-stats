#install.packages(c("ggplot2","magrittr","tidyr","stringr","dplyr","fread","tidyverse","readr","gapminder"))

library(tibble)
library(gapminder)
library(ggplot2)
library(dplyr)

attach(gapminder)

data2017 <- as_tibble(read.csv("2017.csv")) %>%
  rename(
    happiness_score = Happiness.Score,
    gdp_per_cap = Economy..GDP.per.Capita.,
    lifeExp = Health..Life.Expectancy.
  )
summary <- summary(gapminder)


# Top 10 GDP - Country, 2017
data2017_sorted <- data2017[order(-data2017$gdp_per_cap),]
data2017_sorted <- head(data2017_sorted,n=10L)
top10_gdp_countries <- ggplot(data2017_sorted, aes(x=reorder(Country, -gdp_per_cap),y=gdp_per_cap)) +
  geom_bar(stat="identity", color="white", fill="black") +
  ggtitle("Top 10 Economies by GDP - 2007") +
  xlab("Country") +
  ylab("GDP per capita")
top10_gdp_countries



gdp_lifeexp <- ggplot(data2017, aes(x=lifeExp, y=gdp_per_cap)) +
  geom_point() +
  ggtitle("Correlation between life expectation and GDP per capita") +
  xlab("Happiness Score") +
  ylab("GDP per capita")
gdp_lifeexp


# Entwicklung der Lebenserwartung Schweiz im Vergleich zu USA
ch_usa <- filter(gapminder, country %in% c("Switzerland", "United States"))
ch_usa_plot <- ggplot(ch_usa, aes(x = year, y = lifeExp, colour = country)) +
  geom_line() +
  scale_colour_manual(values = c("Switzerland" = "red","United States" = "green")) +
  ggtitle("Entwicklung der Lebenserwartung Schweiz und USA 1952 - 2007") +
  xlab("Jahr") +
  ylab("Lebenserwartung in Jahren")
ch_usa_plot

# Bevölkerungsentwicklung Schweiz
ch <- filter(gapminder, country %in% c("Switzerland"))
population_development <- ggplot(ch, aes(x = year, y = pop/1e6)) +
  ylim(4,10) +
  geom_line() +
  ggtitle("Entwicklung der Bevölkerung Schweiz 1952 - 2007") +
  xlab("Jahr") +
  ylab("Bevölkerung in Mio")

population_development


happiness_gdp <- ggplot(data2017, aes(x=happiness_score, y=gdp_per_cap)) +
  geom_point() +
  ggtitle("Correlation between happiness and GDP per capita") +
  xlab("Happiness Score") +
  ylab("GDP per capita")
happiness_gdp


happiness_freedom <- ggplot(data2017, aes(x=happiness_score, y=Freedom)) +
  geom_point() +
  ggtitle("Correlation between happiness and freedom") +
  xlab("Happiness Score") +
  ylab("Freedom")
happiness_freedom
