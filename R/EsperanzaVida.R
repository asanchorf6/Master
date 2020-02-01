View(gapminder)

gapminder2<-gapminder%>%
  filter(year==1960 & continent %in% c("Europe","Asia"))
View(gapminder2)

g <-  gapminder2 %>% 
  ggplot(aes(life_expectancy, fertility, col=continent))+
  geom_point(size=3) +  
  theme_classic()
g