install.packages("readxl")
library("readxl")
# Loading
library("readxl")
# xlsx files
my_data <- read_excel("MGB & UGB.xlsx")
my_data

library("readxl")
hy <- read_excel("Hy.xlsx")
hy
a<-data.frame(hy)
library(ggplot2)
iron<-ggplot(a, aes(ironmgb, ironugb)) +  geom_smooth(method = "lm") + 
  geom_point() + 
  labs(title = "The Iron values of MGB and UGB compared", 
  subtitle = "Interstitial dataset" )
plot(iron)

watertemp<- ggplot(a, aes(WTmgb, WTugb)) +  geom_smooth(method = "lm") + 
  geom_point() + 
  labs(title = "The WaterTemp values of MGB and UGB compared", 
       subtitle = "Interstitial dataset" )
plot(watertemp)

oxygen <-ggplot(a, aes(OXMmgb, OXugb)) +  geom_smooth(method = "lm") + 
  geom_point() + 
  labs(title = "The oxygen values of MGB and UGB compared", 
       subtitle = "Interstitial dataset" )
plot(oxygen)

conductivity <-ggplot(a, aes(ECmgb, ECugb)) +  geom_smooth(method = "lm") + 
  geom_point() + 
  labs(title = "The E.Conductivity values of MGB and UGB compared", 
       subtitle = "Interstitial dataset" )
plot(conductivity)












library(gridExtra)
grid.arrange(watertemp, oxygen, conductivity, iron, ncol= 2)







