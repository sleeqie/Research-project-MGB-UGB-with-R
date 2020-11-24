#chapter 4
#R as a fancy calculator can be used for the following:
#Basic arithmetic operators, Mathematical functions, Vector operations, 
# and Matrix operations.

#Basic arithmetic operators:
2 + 3
2 ^ 5
7 %% 3
7 %/% 3 #x divided by y but rounded down (integer divide)

#examples on how to use minimized code on vectors
baskets.of.Granny <- c(12,4,4,6,9,3)
baskets.of.Geraldine <- c(5,3,2,2,12,9)
#Granny requested $120 per basket, and Geraldine asked for $145 per basket. 
#How do you calculate the total donations that they collected for each game?
Granny.Money <- baskets.of.Granny * 120
Geraldine.Money <- baskets.of.Geraldine * 145
Granny.Money
Geraldine.Money

#It can also be in one line like this:
baskets.of.Granny * 120 + baskets.of.Geraldine * 145

#To get the total money these ladies earned in each game, you simply do this:
Total.Money <- Granny.Money + Geraldine.Money
Total.Money
sum(Total.Money)


