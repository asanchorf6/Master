library(ggplot2movies)
data(movies)
View(movies)
str(movies)

movies2<- movies%>%
  select(-(r1:r10))


movies3<-movies2 %>%
  filter(!is.na(budget),length>30) %>%
  group_by(year) %>%
  slice(which.min(rating))%>%
  select(title,year,length,budget,rating)%>%
  arrange(desc(year))
            
View(movies3)


p <-  movies3 %>% 
  ggplot(aes(budget, rating, col=year))+
  geom_point(aes(size=rating)) +  
  scale_x_log10() +
  xlab("Budget (log scale)") + 
  ylab("Rating")+
  theme_classic()
p

