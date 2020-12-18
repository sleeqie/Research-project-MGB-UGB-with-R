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




























































