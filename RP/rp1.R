library("readxl")
hy <- read_excel("Hy.xlsx")
hy
a<-data.frame(hy)

#TABLE 1 DATA
library(ggplot2)
iron<-ggplot(a, aes(x=ironmgb, y=ironugb)) +  geom_smooth(method = "lm") + 
  geom_point(aes(col= Site)) + 
  labs(title = "The Iron values of MGB and UGB compared", 
  subtitle = "Interstitial dataset", y = "Total Iron (mg/L) UGB" , 
   x= "Total Iron (mg/L) MGB")
plot(iron)
ggsave("iron.png", plot = iron)

watertemp<- ggplot(a, aes(x=WTmgb, y=WTugb)) +  geom_smooth(method = "lm") + 
  geom_point(aes(col=Site)) + 
  labs(title = "The WaterTemp values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y = "Water temperature (°C) UGB", 
       x= "Water temperature (°C) MGB")
plot(watertemp)
ggsave("watertemp.png", plot = watertemp)

oxygen <-ggplot(a, aes(x=OXMmgb, y=OXugb)) +  geom_smooth(method = "lm") + 
  geom_point(aes(col= Site)) + 
  labs(title = "The oxygen values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y= "Oxygen (mg/L) UGB", x= "Oxygen (mg/L) MGB")
plot(oxygen)
ggsave("oxygen.png", plot = oxygen)

conductivity <-ggplot(a, aes(x=ECmgb, y=ECugb)) +  geom_smooth(method = "lm") + 
  geom_point(aes(col=Site)) + 
  labs(title = "The E.Conductivity values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y= "Electrical Conductivity (μS/cm) UGB", 
       x= "Electrical Conductivity (μS/cm) MGB" )
plot(conductivity)
ggsave("conduct.png", plot = conductivity)

NO <-ggplot(a, aes(x=NOmgb, y=NOugb)) +  geom_smooth(method = "lm") + 
  geom_point(aes(col=Site)) + 
  labs(title = "The NO3 values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y= "NO3 (mg/L) UGB", x= "NO3 (mg/L) MGB" )
plot(NO)
ggsave("no.png", plot = NO)

pH <- ggplot(a, aes(x=pHmgb, y=pHugb)) +  geom_smooth(method = "lm") + 
  geom_point(aes(col=Site)) + 
  labs(title = "The pH values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y= "pH (UGB)", x= "pH (MGB)" )
plot(pH)
ggsave("pH.png", plot = pH)

ortho<- ggplot(a, aes(x=orthomgb, y=orthougb)) +  geom_smooth(method = "lm") + 
  geom_point(aes(col=Site)) + 
  labs(title = "The Ortho PO42- values of MGB and UGB compared", 
       subtitle = "Interstitial dataset", y= "Ortho (mg/L) UGB", x= "Ortho (mg/L) MGB" )
plot(ortho)
ggsave("ortho.png", plot = ortho)

library(gridExtra)
table1<-grid.arrange(watertemp, oxygen, conductivity, pH, ncol= 2)
table2<-grid.arrange (NO, iron, ortho, ncol= 2)

ggsave("h.png", plot = table1)
ggsave ("m.png", plot = table2)


#TABLE 2 COLMATION DATA@
library("readxl")
colma <- read_excel("colma.xlsx")
colma
b<-data.frame(colma)

library(ggplot2)
o1<-ggplot(b, aes(x=O2mgb, y=ofmgb)) + geom_point(aes(col=Site)) + 
  geom_smooth(method = "lm") +
  labs(title = "The Comparison of Oxygen and Outflow reduction for MGB", 
        subtitle = "Interstitial dataset", y= "Outflow reduction (%)", x= "Oxygen (mg/L)" )
o1
ggsave("o2.png", plot = o1)

o2<-ggplot(b, aes(x=O2ugb, y=ofugb)) + geom_point(aes(col=Site)) + 
  geom_smooth(method = "lm") +
  labs(title = "The Comparison of Oxygen and Outflow reduction for UGB", 
       subtitle = "Interstitial dataset", y= "Outflow reduction (%)", x= "Oxygen (mg/L)" )

o2
ggsave("o1.png", plot = o2)

#TABLE 3 SEDIMENT
library("readxl")
sediment <- read_excel("sediment.xlsx")
sediment
c<-data.frame(sediment)

s1<-ggplot(c, aes(x=Sedimentgesmgb, y=Sedimentgesugb)) + 
  geom_point (aes(col= Site, size= Sedimentgesmgb)) + 
  labs(title = "Comparing the Sediment ges. of MGB and UGB", 
       subtitle = "Interstitial dataset", x= "Sediment MGB (ml)",
       y= "Sediment UGB (ml)") 
s11<-s1 + labs(color="Site", size="Size")
ggsave("s11.png", plot = s11)

s2<-ggplot(c, aes(x=Sedimentnacmgb, y=Sedimentnacugb)) + 
  geom_point (aes(col= Site, size= Sedimentnacmgb)) + 
  labs(title = "Comparing the Sediment after washing of MGB and UGB", 
       subtitle = "Interstitial dataset", x= "Sediment MGB (ml)",
       y= "Sediment UGB (ml)" )
s22<-s2 + labs(color="Site", size="Size")
ggsave("s22.png", plot = s22)


s3<-ggplot(c, aes(x=Sandmgb, y=Sandugb)) + 
  geom_point (aes(col= Site, size= Sandmgb)) + 
  labs(title = "Comparing the Sand values of MGB and UGB", 
       subtitle = "Interstitial dataset", x= "Sand MGB",
       y= "Sand UGB" )
s33<-s3 + labs(color="Site", size="Size")
ggsave("s33.png", plot = s33)

s4<-ggplot(c, aes(x=Feinsandmgb, y=Feinsandugb)) + 
  geom_point (aes(col= Site, size= Feinsandmgb)) + 
  labs(title = "Comparing the Finesand values of MGB and UGB", 
       subtitle = "Interstitial dataset", x= "Finesand MGB",
       y= "Finesand UGB" )
s44<-s4 + labs(color="Site", size="Size")
ggsave("s44.png", plot = s44)

s5<-ggplot(c, aes(x=Ockermgb, y=Ockerugb)) + 
  geom_point (aes(col= Site, size= Ockermgb)) + 
  labs(title = "Comparing the Ocker values of MGB and UGB", 
       subtitle = "Interstitial dataset", x= "Ocker MGB",
       y= "Ocker UGB" )
s55<-s5 + labs(color="Site", size="Size")
ggsave("s55.png", plot = s55)

s6<-ggplot(c, aes(x=Detritusmgb, y=Detritusugb)) + 
  geom_point (aes(col= Site, size= Detritusmgb)) + 
  labs(title = "Comparing the Detritus values of MGB and UGB", 
       subtitle = "Interstitial dataset", x= "Detritus MGB",
       y= "Detritus UGB" )
s66<-s6 + labs(color="Site", size="Size")
ggsave("s66.png", plot = s66)

s7<-ggplot(c, aes(x=Schluffmgb, y=Schluffugb)) + 
  geom_point (aes(col= Site, size= Schluffmgb)) + 
  labs(title = "Comparing the Silt values of MGB and UGB", 
       subtitle = "Interstitial dataset", x= "silt MGB",
       y= "silt UGB" )
s77<-s7 + labs(color="Site", size= "Size")
ggsave("s77.png", plot = s77)

library(gridExtra)
sedtab1<-grid.arrange(s1, s2, ncol= 2)
sedtab2<-grid.arrange (s3, s4, s7, ncol= 2)

#TABLE 4 INTERSTITIAL FAUNA
























