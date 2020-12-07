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
x <- c(3, 6, 1, NA, 2)
x[x > 2]

#Combining logical operators
#Create two logical vectors, as follows:
min.baskets <- baskets.of.Granny == min (baskets.of.Granny)
min.baskets
max.baskets <- baskets.of.Granny == max(baskets.of.Granny)
max.baskets

#Combine both vectors with the OR operator (|), as follows:
min.baskets | max.baskets

#The NOT operator (!) is another example of the great power of vectorization.
x[!is.na(x)]


#You can use the numerical translation of a logical vector for that purpose in the sum() function, as follows:
sum(the.best) #So, five times, Gearldine was better than granny. 
#figure out whether any value in a logical vector is TRUE.
#the function that performs that task is called any(). 
#To ask R whether Granny was better than Geraldine in any game, use this code:
any(the.best)

#To find out whether Granny was always better than Geraldine, use the following code:
all(the.best)

#Arithmetic vector operations
sum(1, 2, 3)
#Calculates the sum of all values in x
prod(1, 2, 3)
#Calculates the product of all values in x
min(1, 2, 3)
#Gives the minimum of all values in x
max(1, 2, 3)
#Gives the maximum of all values in x
cumsum (1)
#Gives the cumulative sum of all values in x
cumprod(1)
#Gives the cumulative product of all values in x
cummin(1)
#Gives the minimum for all values in x from the start of the vector until the position of that value
cummax(1)
#Gives the maximum for all values in x from the start of the vector until the position of that v alue
diff(1, 2, 3)
#Gives for every value the difference between that value and the next value in the vector

#Summarizing a vector
min(baskets.of.Granny)
max(baskets.of.Granny)
sum(baskets.of.Geraldine, baskets.of.Granny)

#discard the missing values by setting the argument na.rm to TRUE. 
x <- c(3, 6, 1, NA, 2)
x[x > 2]
sum(x)
sum(x, na.rm = TRUE)

#Cumulating operations
#After the second game, that’s the total of the first two games; 
#after the third game, it’s the total of the first three games; and so on. You can make this calculation easily by using the cumulative sum function, cumsum(), as in the following example:

cumsum(baskets.of.Granny)
cummax(baskets.of.Granny)
cumprod(baskets.of.Granny)
cummax(baskets.of.Geraldine)

#Calculating differences
#You can calculate the difference in the number of baskets between every two games Granny played by using the following code:
diff(baskets.of.Geraldine)
diff(baskets.of.Granny)

#Recycling arguments
#Suppose you split up the number of baskets Granny made into 
#two-pointers and three-pointers:
Granny.pointers <- c(10,2,4,0,4,1,4,2,7,2,1,2)
#You arrange the numbers in such a way that for every game, first the number of two-pointers is given, followed by the number of three-pointers.
#Now Granny wants to know how many points she’s actually scored this season. You can calculate that easily with the help of recycling:

points <- Granny.pointers * c(2,3)
points
sum(points)
#Now Granny wants to know how much she improved every game. 
#Being lazy, you have a cunning plan. With diff(), 
#you calculate how many more or fewer baskets Granny made than she made in the game before. 
#Then you use the vectorized division to divide these differences by the number of baskets in the game. 
#To top it off, you multiply by 100 and round the whole vector. All these calculations take one line of code:
round(diff(baskets.of.Granny) / baskets.of.Granny[1:5] * 100)











