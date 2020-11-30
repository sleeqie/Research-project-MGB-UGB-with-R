#Understanding indexing in R
numbers <- 30:1
numbers
#Extracting values from a vector
numbers [4]
numbers [c(4, 5, 6)]
#OR 
Indices<-c(4, 5, 6)
Indices
numbers [Indices]
#to drop values
numbers[-3]
numbers[(1:20)]
#expel the first 20 numbers
numbers[-(1:20)]

baskets.of.Granny <- c(12, 4, 8, 6, 9, 3)
baskets.of.Granny
baskets.of.Granny[3] <- 5
baskets.of.Granny

#Working with logical vectors
10==10
10!=10
10>9
10>=9
10<9
10<=9
10&9
!10
baskets.of.Granny < 5
baskets.of.Granny > 5
#For that purpose, R offers the delightful which() function. 
#To find out which games Granny scored more than five baskets in, you can use the following code:
which (baskets.of.Granny > 5)

baskets.of.Geraldine <- c(19, 24, 28, 0, 99, 8)
baskets.of.Geraldine
the.best <- baskets.of.Geraldine > baskets.of.Granny
the.best
which(the.best)
baskets.of.Granny[the.best]

#If you want to keep only the values larger than 2 in the vector x, 
#you could do that with the following code:





























