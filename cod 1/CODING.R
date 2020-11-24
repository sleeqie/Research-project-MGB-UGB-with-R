#Performing multiple calculations with vectors
x <- 1:5
x
x+2
x+6:10
print("hello world!")
#Doing simple math
1+2+3+4+5
#To construct a vector
c(1,2,3,4,5)
#One very handy operator is called sequence, 
#and it looks like a colon (:).
1:5
#calculate the sum
sum(1:5)
#storing and calculating stored values
x <- 1:5
x
y <- 10
y
x + y
z<- x + y
z
h<- "hello"
h
print(h)
hw<- c ("hello", "world")
hw
#You can use the paste() 
#function to concatenate multiple text elements. 
paste("hello", "world")
#To ask the user questions, 
#you can use the readline() function.
h <- "Hello"
yourname <- readline ("What is your name?") 
#What is your name?Andrie
paste (h, yourname)

#sourcing a script
#function to run an entire script is source()
#when you source a script, output is printed only if you have an explicit print() function.

h <- "hello"
h
yourname <- readline("what is your name?")
yourname
print(paste(h, yourname))

# the ls() function to list the objects in the workspace.
ls()
#help function
?paste
#to removevariable from the workspace
rm(y)

#thats all for chapter 1-2

























