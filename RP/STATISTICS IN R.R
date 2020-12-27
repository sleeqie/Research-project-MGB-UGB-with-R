#STATISTICS IN R
#MEAN:
#It is calculated by taking the sum of the values and dividing with the number of values in a data series.
#The function mean() is used to calculate this in R.
#syntax: The basic syntax for calculating mean in R is −
mean(x, trim = 0, na.rm = FALSE, ...)
#Following is the description of the parameters used −
#x is the input vector.
#trim is used to drop some observations from both end of the sorted vector.
#na.rm is used to remove the missing values from the input vector.
#Example
# Create a vector. 
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
# Find Mean.
result.mean <- mean(x)
print(result.mean)
#Applying Trim Option
#When trim = 0.3, 3 values from each end will be dropped from the calculations to find mean.
# Create a vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
# Find Mean.
result.mean <-  mean(x,trim = 0.3)
print(result.mean)
#Applying NA Option
#If there are missing values, then the mean function returns NA.
#To drop the missing values from the calculation use na.rm = TRUE. which means remove the NA values.
# Create a vector. 
x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
# Find mean.
result.mean <-  mean(x)
print(result.mean)
# Find mean dropping NA values.
result.mean <-  mean(x,na.rm = TRUE)
print(result.mean)

#MEDIAN:
#The middle most value in a data series is called the median. The median() function is used in R to calculate this value.
# Create the vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
# Find the median.
median.result <- median(x)
print(median.result)

#Mode
#The mode is the value that has highest number of occurrences in a set of data. Unike mean and median, mode can have both numeric and character data.
# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
# Calculate the mode using the user function.
result <- getmode(v)
print(result)
# Create the vector with characters.
charv <- c("o","it","the","it","it")

# Calculate the mode using the user function.
result <- getmode(charv)
print(result)

#LINEAR REGRESSION
#Input Data
# Values of height
#151, 174, 138, 186, 128, 136, 179, 163, 152, 131
# Values of weight.
#63, 81, 56, 91, 47, 57, 76, 72, 62, 48
#Create Relationship Model & get the Coefficients
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
# Apply the lm() function.
relation <- lm(y~x)
print(relation)
#Get a summary of the relationship.
print(summary(relation))
#predict the weight of new persons
# The predictor vector.
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
# The response vector.
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
# Apply the lm() function.
relation <- lm(y~x)
# Find weight of a person with height 170.
a <- data.frame(x = 170)
result <-  predict(relation,a)
print(result)

#Visualize the regression graphically
# Create the predictor and response variable.
x <- c(151, 174, 138, 186, 128,
       136, 179, 163, 
       152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
relation <- lm(y~x)
# Give the chart file a name.
png(file = "linearregression.png")
# Plot the chart.
plot(y,x,col = "blue",main = "Height & Weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")
# Save the file.
dev.off()

#example
wtmgb <- c(11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5, 11.5)
wtugb <- c(14, 14, 14, 14, 14.5, 14.5, 14, 14, 14.5, 14.5, 14)
paper <- lm(wtmgb~wtugb)
print(paper)
png (file = "lr.png")
plot(wtmgb,wtugb,col = "blue",main = "Height & Weight Regression",
     abline(lm(wtmgb~wtugb)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")
?abline
??cex
?pch

#MULTIPLE REGRESSION
input <- mtcars[,c("mpg","disp","hp","wt")]
print(head(input))
#Create Relationship Model & get the Coefficients
# Create the relationship model.
model <- lm(mpg~disp+hp+wt, data = input)
# Show the model.
print(model)
# Get the Intercept and coefficients as vector elements.
cat("# # # # The Coefficient Values # # # ","\n")
?cat
a <- coef(model)[1]
print(a)
Xdisp <- coef(model)[2]
Xhp <- coef(model)[3]
Xwt <- coef(model)[4]
print(Xdisp)
print(Xhp)
print(Xwt)

#LOGICAL REGRESSION
#Create Regression Model
#We use the glm() function to create the regression model and get its summary for analysis.
input <- mtcars[,c("am","cyl","hp","wt")]
am.data = glm(formula = am ~ cyl + hp + wt, data = input, family = binomial)
print(summary(am.data))

#NORMAL DISTRIBUTION #we get a bell shaped curve
#dnorm() This function gives height of the probability distribution at each point for a given mean and standard deviation.
# Create a sequence of numbers between -10 and 10 incrementing by 0.1.
x <- seq(-10, 10, by = .1)
# Choose the mean as 2.5 and standard deviation as 0.5.
y <- dnorm(x, mean = 2.5, sd = 0.5)
# Give the chart file a name.
png(file = "dnorm.png")
plot(x,y)
# Save the file.
dev.off()

#pnorm() This function gives the probability of a normally distributed random number to be less that the value of a given number. It is also called "Cumulative Distribution Function".
# Create a sequence of numbers between -10 and 10 incrementing by 0.2.
x <- seq(-10,10,by = .2)
# Choose the mean as 2.5 and standard deviation as 2. 
y <- pnorm(x, mean = 2.5, sd = 2)
# Give the chart file a name.
png(file = "pnorm.png")
# Plot the graph.
plot(x,y)
# Save the file.
dev.off()

#qnorm() This function takes the probability value and gives a number whose cumulative value matches the probability value.
# Create a sequence of probability values incrementing by 0.02.
x <- seq(0, 1, by = 0.02)
# Choose the mean as 2 and standard deviation as 3.
y <- qnorm(x, mean = 2, sd = 1)
# Give the chart file a name.
png(file = "qnorm.png")
# Plot the graph.
plot(x,y)
# Save the file.
dev.off()

#rnorm() This function is used to generate random numbers whose distribution is normal. It takes the sample size as input and generates that many random numbers. We draw a histogram to show the distribution of the generated numbers.
# Create a sample of 50 numbers which are normally distributed.
y <- rnorm(50)
# Give the chart file a name.
png(file = "rnorm.png")
# Plot the histogram for this sample.
hist(y, main = "Normal DIstribution")
# Save the file.
dev.off()

#R - Binomial Distribution
#The binomial distribution model deals with finding the probability of success of an event which has only two possible outcomes in a series of experiments.
#dbinom() This function gives the probability density distribution at each point.
# Create a sample of 50 numbers which are incremented by 1.
x <- seq(0,50,by = 1)
# Create the binomial distribution.
y <- dbinom(x,50,0.5)
# Give the chart file a name.
png(file = "dbinom.png")
# Plot the graph for this sample.
plot(x,y)
# Save the file.
dev.off()

#pbinom() This function gives the cumulative probability of an event. It is a single value representing the probability.
# Probability of getting 26 or less heads from a 51 tosses of a coin.
x <- pbinom(26,51,0.5)
print(x)

#qbinom() This function takes the probability value and gives a number whose cumulative value matches the probability value.
# How many heads will have a probability of 0.25 will come out when a coin
# is tossed 51 times.
x <- qbinom(0.25,51,1/2)
print(x)

#rbinom()This function generates required number of random values of given probability from a given sample.
# Find 8 random values from a sample of 150 with probability of 0.4.
x <- rbinom(8,150,.4)
print(x)

#R - Poisson Regression
#Poisson Regression involves regression models in which the response variable is in the form of counts and not fractional numbers. 
#For example, the count of number of births or number of wins in a football match series. Also the values of the response variables follow a Poisson distribution.
input <- warpbreaks
print(head(input))
#Create Regression Model
output <-glm(formula = breaks ~ wool+tension, data = warpbreaks,
             family = poisson)
print(summary(output))

#ANCOVA 
#We create a regression model taking "hp" as the predictor variable and "mpg" as the response variable taking into account the interaction between "am" and "hp".

#Model with interaction between categorical variable and predictor variable
input <- mtcars[,c("am","mpg","hp")]
print(head(input))
# Get the dataset.
input <- mtcars
# Create the regression model.
result <- aov(mpg~hp*am,data = input)
print(summary(result))


#Model without interaction between categorical variable and predictor variable
# Get the dataset.
input <- mtcars
# Create the regression model.
result <- aov(mpg~hp+am,data = input)
print(summary(result))

#Comparing Two Models
#Now we can compare the two models to conclude if the interaction of the variables is truly in-significant. For this we use the anova() function.
# Get the dataset.
input <- mtcars
# Create the regression models.
result1 <- aov(mpg~hp*am,data = input)
result2 <- aov(mpg~hp+am,data = input)
# Compare the two models.
print(anova(result1,result2))

#Time Series Analysis
# Get the data points in form of a R vector.
rainfall <- c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)
# Convert it to a time series object.
rainfall.timeseries <- ts(rainfall,start = c(2012,1),frequency = 12)
# Print the timeseries data.
print(rainfall.timeseries)
# Give the chart file a name.
png(file = "rainfall.png")
# Plot a graph of the time series.
plot(rainfall.timeseries)
# Save the file.
dev.off()

#Multiple Time Series
# Get the data points in form of a R vector.
rainfall1 <- c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)
rainfall2 <- 
  c(655,1306.9,1323.4,1172.2,562.2,824,822.4,1265.5,799.6,1105.6,1106.7,1337.8)
# Convert them to a matrix.
combined.rainfall <-  matrix(c(rainfall1,rainfall2),nrow = 12)
# Convert it to a time series object.
rainfall.timeseries <- ts(combined.rainfall,start = c(2012,1),frequency = 12)
# Print the timeseries data.
print(rainfall.timeseries)
# Give the chart file a name.
png(file = "rainfall_combined.png")
# Plot a graph of the time series.
plot(rainfall.timeseries, main = "Multiple Time Series")
# Save the file.
dev.off()

#R - Nonlinear Least Square
#nls(formula, data, start)
#a = b1*x^2+b2 eqn
xvalues <- c(1.6,2.1,2,2.23,3.71,3.25,3.4,3.86,1.19,2.21)
yvalues <- c(5.19,7.43,6.94,8.11,18.75,14.88,16.06,19.12,3.21,7.58)
# Give the chart file a name.
png(file = "nls.png")
# Plot these values.
plot(xvalues,yvalues)
# Take the assumed values and fit into the model.
model <- nls(yvalues ~ b1*xvalues^2+b2,start = list(b1 = 1,b2 = 3))
# Plot the chart with new data by fitting it to a prediction from 100 data points.
new.data <- data.frame(xvalues = seq(min(xvalues),max(xvalues),len = 100))
lines(new.data$xvalues,predict(model,newdata = new.data))
# Save the file.
dev.off()
# Get the sum of the squared residuals.
print(sum(resid(model)^2))
# Get the confidence intervals on the chosen values of the coefficients.
print(confint(model))

#DECISION TREE
#Decision tree is a graph to represent choices and their results in form of a tree.
# Load the party package. It will automatically load other
# dependent packages.
library(party)
# Print some records from data set readingSkills.
print(head(readingSkills))
# Load the party package. It will automatically load other dependent packages.
library(party)
# Create the input data frame.
input.dat <- readingSkills[c(1:105),]
# Give the chart file a name.
png(file = "decision_tree.png")
# Create the tree.
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score, 
  data = input.dat)
# Plot the tree.
plot(output.tree)
# Save the file.
dev.off()

#RANDOM FOREST
# Load the party package. It will automatically load other
# required packages.
library(party)
library(randomForest)
# Create the forest.
output.forest <- randomForest(nativeSpeaker ~ age + shoeSize + score, 
                              data = readingSkills)
# View the forest results.
print(output.forest) 
# Importance of each predictor.
print(importance(fit,type = 2)) 

#SURVIVAL ANALYSIS
# Load the library.
library("survival")
# Print first few rows.
print(pbcseq)
#to be continued, check material

#CHI SQUARE TEST
#Chi-Square test is a statistical method to determine if two categorical variables have a significant correlation between them. Both those variables should be from same population and they should be categorical like − Yes/No, Male/Female, Red/Green etc.
library("MASS")
print(str(Cars93))
?str
Live Demo
# Load the library.
library("MASS")

# Create a data frame from the main data set.
car.data <- data.frame(Cars93$AirBags, Cars93$Type)

# Create a table with the needed variables.
car.data = table(Cars93$AirBags, Cars93$Type) 
print(car.data)

# Perform the Chi-Square test.
print(chisq.test(car.data))














































