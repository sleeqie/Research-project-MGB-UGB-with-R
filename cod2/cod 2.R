#After six games, you want to know how many baskets Granny has made so far this season. 
#You can put these numbers in a vector, like this:
baskets.of.Granny <- c (12,4,4,6,9,3)
baskets.of.Granny
sum(baskets.of.Granny)
#A less obvious example of a vectorized function is the paste() function. 
#If you make a vector with the first names of the members of your family, 
#paste() can add the last name to all of them with one command, as in the following example:
firstnames <- c ("toheeb", "nike", "kunle", "banke", "taofeeq", "damola")
lastname <- "yusuf"
paste(firstnames, lastname)
paste(lastname, firstnames)
#You also can give R two longer vectors, 
#and R will combine them element by element, like this:
Lovers <- c("Kelly", "Wilson", "Dami")
Surnames <- c("ereretevwe", "dammmy", "waters")
paste(Lovers, Surnames)

#Putting the argument in a function
#Arguments without default values:
print()
#Arguments with default values:
#You can specify an argument like this:
print( x= "isn't this fun?")

print(digits=6, x = 11/7)
#to get more help info:
?print()

#Making history
#Saving the history is done using the savehistory() function. 
#By default, R saves the history in a file called .Rhistory in your current working directory. 
#If you want to load a history file you saved earlier, you can use the loadhistory() function. 
#This will replace the history with the one saved in the .Rhistory file in the current working directory.

#Structuring a code
baskets.of.Geraldine <- c(5,3,2,2,12,9)
Intro <- "It is amazing! The All Star Grannies scored a total of"
Outro <- "baskets in the last six games"
Total.baskets <- baskets.of.Granny + baskets.of.Geraldine
Total.baskets
Text <- paste(Intro,
              sum(Total.baskets), Outro)
cat(Text)
#cat()removed the quote from text.
#It prints whatever you give it as an argument directly to the console. 
#It also interprets special characters like line breaks and tabs. 

#more examples of cat() function
cat ("If you doubt whether it works, just try it out.")

#Adding comments
# The All Star Grannies do it again! 
baskets.of.Granny <- c(12,4,4,6,9,3) 
# Granny rules 
sum(baskets.of.Granny) 
# total number of points

#Finding packages
#Several websites, called repositories, offer a collection of R packages. 
#The most important repository is the Comprehensive R Archive Network 
#(CRAN; http://cran.r-project.org), which you can access easily from within R.

#Installing packages
#You install a package in R with the function — wait for it — install.packages(). 
install.packages ("fortunes")

#Loading and unloading packages
#So, before you can use a package, 
#you have to load it into R by using the library() function.
#You load the fortunes package like this:

library(fortunes)
fortune("This is R")

fortune(161)

#You can use the fortune() function without arguments to 
#get a random selection of the fortunes available in the package. 
#It’s a nice read.

#To unload a package, use the detach() function
detach(package:fortunes)











