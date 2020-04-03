#EX1 #### 

library(ggplot2)
library(PogromcyDanych)
library(dplyr)
setLang(lang = "eng")

View(cats_birds)

cats_birds %>%
  ggplot(aes(x = length, y = speed, color = group, shape = group)) +
  geom_point(aes(shape=group, size=4)) +
  geom_line(aes(linetype = group), size = 1)

#EX2 ####

library(hrbrthemes)

View(pearson)

pearson %>%
  ggplot(aes(x = father, y = son)) +
  geom_point() +
  geom_smooth(method = 'lm', color = 'red', fill = '#69b3a2', se = TRUE) +
  theme_ipsum()


#EX3 ####

seriesIMDB %>%
  ggplot(aes(x = note, y = reorder(series, note, fun = median, .desc = TRUE)))+
  geom_boxplot()



#EX4 ####

View(diagnosis)

diagnosis %>%
  na.omit() %>%
  ggplot(aes(x = eduk4_2013, fill = gp29))+
  geom_bar()
  

#EX5 ####

auta2012 %>%
  filter(Brand == 'Volkswagen',
         Model == 'Passat') %>%
  select(Brand, Model, Year, Price) -> data.paseratti

figure<-ggplot(data.paseratti, aes(x = Year, y = Price)) +
  geom_smooth()+
  ylim(0, 20000)

figure + theme_bw()
figure + theme_gray()
figure + theme_dark()
figure + theme_classic()
figure + theme_light()
figure + theme_linedraw()
figure + theme_void()
figure + theme_excel_new()
figure + theme_minimal()
figure + theme_economist()
figure + theme_fivethirtyeight()
figure + theme_foundation()


#EX6 ####

auta2012 %>%
  filter(Brand == 'Toyota') %>%
  select(Brand,Model) %>% group_by(Model) %>% summarise(counter = n()) ->data.toyki

attach(data.toyki)
View(data.toyki)

head(data.toyki[order(-counter),,drop = FALSE], 5) ->najtoyki


area<- ggplot(najtoyki, aes(x="", y=counter, fill=Model))+
  geom_bar(width = 1, stat = "identity")


najtoyki %>%
  ggplot(aes(x='', y = counter, fill = Model))+
  geom_bar(width = 2, stat = "identity")+
  coord_polar('y', start = 0) -> pieplot

pieplot

najtoyki %>%
  ggplot(aes(x= reorder(Model, -counter), y = counter))+
  geom_bar(stat="identity")+
  ylim(0,1700) +
  theme_minimal() -> barplot_


barplot_



#ex7 ####
# I sposób

library(ggpubr)


pearson  %>%
  ggplot(aes(x = father))+
  geom_histogram(color = 'white')-> father_hist

pearson  %>%
  ggplot(aes(x = son))+
  geom_histogram(color = 'white') -> son_his

pearson  %>%
  ggplot(aes(x = father))+
  geom_density() -> father_dens

pearson  %>%
  ggplot(aes(x = son))+
  geom_density() -> son_dens


ggarrange(father_hist, son_his, father_dens, son_dens, labels = c('Father histogram', 'Son histogram', 'Father density', 'Son density'), ncol = 2, nrow = 2)




#lub tak:

ggplot() + 
  geom_density(data = pearson, aes(x = father, fill = "r"), alpha = 0.3) +
  geom_density(data = pearson, aes(x = son, fill = "b"), alpha = 0.3) +
  scale_colour_manual(name ="people", values = c("r" = "red", "b" = "blue"), labels=c("b" = "son", "r" = "father")) +
  scale_fill_manual(name ="people", values = c("r" = "red", "b" = "blue"), labels=c("b" = "son", "r" = "father"))+
  labs(x = "Height", y = 'count', title = "Density") -> fatson_den

ggplot() + 
  geom_histogram(data = pearson, aes(x = father, fill = "r"), alpha = 0.3, color = 'white') +
  geom_histogram(data = pearson, aes(x = son, fill = "b"), alpha = 0.3, color = 'white') +
  scale_colour_manual(name ="people", values = c("r" = "red", "b" = "blue"), labels=c("b" = "son", "r" = "father")) +
  scale_fill_manual(name ="people", values = c("r" = "red", "b" = "blue"), labels=c("b" = "son", "r" = "father")) +
  labs(x = "Height", y = 'count', title = "Histogram")   -> fatson_hist


ggarrange(fatson_hist, fatson_den, ncol = 2)



  
