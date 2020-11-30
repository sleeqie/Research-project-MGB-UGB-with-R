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
#Controlling the order of the operations
#1. Exponentiation
#2. Multiplication and division in the order in which the operators are presented
#3. Addition and subtraction in the order in which the operators are presented
#Everything that’s put between parentheses is carried out first.

#Using mathematical functions:

#abs(x) -Takes the absolute value of x
#log(x,base=y) -Takes the logarithm of x with base y; if base is not specified, returns the natural logarithm
#exp(x) -Returns the exponential of x
#sqrt(x)- Returns the square root of x
#factorial(x)- Returns the factorial of x (x!)
#choose(x,y) -Returns the number of possible combinations when drawing y elements at a time from x possibilities

abs(9)
log(10, base= 2)
exp(2)
sqrt(2)
factorial(2)
choose(10,2)

#Calculating logarithms and exponentials
log(1:3)
log(1:3, base = 6)

#For the logarithms with bases 2 and 10, 
#you can use the convenience functions log2() and log10().

#You carry out the inverse operation of log() by using exp(). 
#This last function raises e to the power mentioned between brackets, like this:

p <- log(1:3)
p
exp(p)

#scientific notations
1.33e4
4.12e-2
1.2e6 / 2e3

#Rounding numbers 
#To round a number to two digits after the decimal point, 
#for example, use the round() function as follows:
round(123.567, digits = 2)

#To multiples of 100,10 etc
#You also can use the round() function to round numbers to multiples of 10, 
#100, and so on. For that, you just add a negative number as the digits argument:
round(123.567, digits = -2)

#If you want to specify the number of significant digits to be retained, 
#regardless of the size of the number, you use the signif() function instead:
signif(123.456, digits = 4)

#Both round() and signif() round numbers to the nearest possibility. 
#So, if the first digit that’s dropped is smaller than 5, the number is rounded down. 
#If it’s bigger than 5, the number is rounded up.
#If the first digit that is dropped is exactly 5, 
#R uses a rule that’s common in programming languages: 
#Always round to the nearest even number. round(1.5) and round(2.5) both return 2, 
#for example, and round (-4.5) returns -4.

#floor(x) rounds to the nearest integer that’s smaller than x.
floor(123.45)
floor(-123.45)
#ceiling(x) rounds to the nearest integer that’s larger than x.
ceiling(123.45)
ceiling(-123.45)
#trunc(x) rounds to the nearest integer in the direction of 0.
trunc(123.45)
trunc(-123.45)

#Trigonometric functions
cos(120) #This is wrong because R calculates in radians not degrees.
#The correct form of calculation is:
#The correct way to calculate the cosine of an angle of 120 degrees, then, is this:
cos(120*pi/180)

#t helps to know, though, that operators can, in many cases, 
#be treated just like any other function if you put the operator between 
#backticks and add the arguments between parentheses, like this:

'+' (2,3)
#Using infinity
2/0
4- Inf
#To check whether a value is finite or infinite, use the functions 
is.finite(2)
is.infinite(2)

#R considers everything larger than the largest number a computer can hold
#to be infinity — on most machines, that’s approximately 1.8 × 10*308. 
#This definition of infinity can lead to unexpected results, as shown in the following example:
is.finite(10^(305:310))
is.infinite(10^(305:310))

#Dealing with undefined outcomes
#You can test whether a calculation results in NaN by using the is.nan() function.
Inf / Inf
is.nan(2)

#Dealing with missing values
#To deal with missing values, R uses the reserved keyword NA, which stands for Not Available.

#If you want to test whether a value is NA, you can use the is.na() function, as follows:
is.na(3)

#Note that the is.na() function also returns TRUE if the value is NaN. 
#The functions is.finite(), is.infinite(), and is.nan() return FALSE for NA values.

#Organizing data in vectors
str(baskets.of.Granny)
#to check the length
length(baskets.of.Granny)


#testing vectors
is.numeric(baskets.of.Granny)
is.integer(baskets.of.Granny)

#Creating vectors
#To make bigger or smaller steps in a sequence, 
#use the seq() function. This function’s by argument allows 
#you to specify the amount by which the numbers should increase or decrease.
seq (from = 4.5, to = 2.5, by = -0.5)

#Alternatively, you can specify the length of the sequence by using the 
#argument length.out. 

seq(from = -2.7, to = 1.3, length.out = 9)

#Repeating vectors
#If you want to repeat the complete vector, for example, you specify the argument times. 
#To repeat the vector c(0, 0, 7) three times, use this code:

rep(c(0, 0, 7), times = 3)
#You also can repeat every value by specifying the argument each, like this:
rep(c(0,2,7), each = 3)

#You can tell R for each value how often it has to be repeated. 
#To take advantage of that magic, tell R how often to repeat each 
#value in a vector by using the times argument:

rep(c(0, 7), times = c(4,2))

#And you can, like in seq, use the argument length.out to tell R how long you want it to be.
rep(1:3,length.out=7)













































































