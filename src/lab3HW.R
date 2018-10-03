####
#RDuggan - 10/2/18
# Lab 3 Assigment
####

#Using code from Lab #3 in-class exercise:

rm(list = ls())
library(tidyverse)

library(gapminder)

#Question 2 from in-class exercise

gapminder <- gapminder
gapminder %>%
  filter(year == "2007") %>%
  ggplot(aes(x = gdpPercap, y = lifeExp))+
  geom_point(size = 2)+
  geom_text(aes(label = ifelse(gdpPercap >= 40000 & continent == "Europe", as.character(country), "")), 
            color = "blue", vjust = -1)+
  labs(xlab("GDP per capita"), ylab("life expectency"))

## New plot for HW #3

gapminder %>%
  filter(year == "2007") %>%
  ggplot(aes(x = gdpPercap, y = lifeExp))+
  geom_point(shape = 21, size = 2, color = "black", fill = "white", stroke = 2)+
  annotate("rect", xmin = 39000, xmax = 51000, ymin = 75, ymax = 85, fill = "red", alpha = 0.25)+
  annotate("text", x = 45000, y = 74, label = "Countries with highest GDP")+
  labs(xlab("GDP per capita"), ylab("life expectancy"))


#geom_polyg(aes(label = ifelse(gdpPercap >= 40000, as.character(country), "")), 
#           color = "blue", vjust = -1)+