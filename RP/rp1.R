library("readxl")
hy <- read_excel("Hy.xlsx")
hy
a<-data.frame(hy)

#TABLE 1
library(ggplot2)
iron<-ggplot(a, aes(ironmgb, ironugb)) +  geom_smooth(method = "lm") + 
  geom_point() + 
  labs(title = "The Iron values of MGB and UGB compared", 
  subtitle = "Interstitial dataset", y = "Total Iron (mg/L) UGB" , 
   x= "Total Iron (mg/L) MGB")
plot(iron)
ggsave("iron.png", plot = iron)

watertemp<- ggplot(a, aes(WTmgb, WTugb)) +  geom_smooth(method = "lm") + 
  geom_point() + 
  labs(title = "The WaterTemp values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y = "Water temperature (°C) UGB", 
       x= "Water temperature (°C) MGB")
plot(watertemp)
ggsave("watertemp.png", plot = watertemp)

oxygen <-ggplot(a, aes(OXMmgb, OXugb)) +  geom_smooth(method = "lm") + 
  geom_point() + 
  labs(title = "The oxygen values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y= "Oxygen (mg/L) UGB", x= "Oxygen (mg/L) MGB")
plot(oxygen)
ggsave("oxygen.png", plot = oxygen)

conductivity <-ggplot(a, aes(ECmgb, ECugb)) +  geom_smooth(method = "lm") + 
  geom_point() + 
  labs(title = "The E.Conductivity values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y= "Electrical Conductivity (μS/cm) UGB", 
       x= "Electrical Conductivity (μS/cm) MGB" )
plot(conductivity)
ggsave("conduct.png", plot = conductivity)

NO <-ggplot(a, aes(NOmgb, NOugb)) +  geom_smooth(method = "lm") + 
  geom_point() + 
  labs(title = "The NO3 values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y= "NO3 (mg/L) UGB", x= "NO3 (mg/L) MGB" )
plot(NO)
ggsave("no.png", plot = NO)

pH <- ggplot(a, aes(pHmgb, pHugb)) +  geom_smooth(method = "lm") + 
  geom_point() + 
  labs(title = "The pH values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y= "pH (UGB)", x= "pH (MGB)" )
plot(pH)
ggsave("pH.png", plot = pH)

ortho<- ggplot(a, aes(orthomgb, orthougb)) +  geom_smooth(method = "lm") + 
  geom_point() + 
  labs(title = "The Ortho PO42- values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y= "Ortho (mg/L) UGB", x= "Ortho (mg/L) MGB" )
plot(ortho)
ggsave("ortho.png", plot = ortho)

library(gridExtra)
table1<-grid.arrange(watertemp, oxygen, conductivity, pH, ncol= 2)
table2<-grid.arrange (NO, iron, ortho, ncol= 2)

ggsave("mg.png", plot = table1)
ggsave ("m.png", plot = table2)


#TABLE 2 COLMATION DATA
library("readxl")
colma <- read_excel("colma.xlsx")
colma
b<-data.frame(colma)

library(ggplot2)
ggplot(b, aes(O2mgb, ofmgb)) + geom_point(aes(col= "colmmgb", fill = colmmgb)) 
  











