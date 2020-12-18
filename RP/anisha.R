#Marithmetic operators
4 + 5 #addition
3-1 
2/3
2*4
7%%3
#dataset in R
?iris
?mtcars
head(iris)
#more info 
head(iris, 10)
tail(iris)
tail(iris, 50)
plot(iris)
summary(iris)
class(iris)
rownames(iris)
colnames(iris)
names(iris)
#[ ]arrays allow us read data from within the variable

iris[1]
iris[2]
iris[,1]

a<- c(1,2,3,4)
b <- c(7,6,8,9)
da <- data.frame(height = a, names= b)
da
da[1] #first row of da
da[2]
da[,1]#first column of da
da[,2]
da[2]
da[1,1]
da[4,2]
da[4,3]

#class work. Do all possible da.
da[1,2]
da[1,1]
da[2,1]
da[2,2]
da[3,2]
da[3,1]
da[4,1]
da[4,2]

#CLASS 2
#assigning and storing values
p<- 3
p
print(p)
class(p)
u<- "anisha"
print(u)
class(u)
o<- 0.1
o
class(o)
p+o
#data types
#numbers 1,2,3
#strings or characters anisha, dami, mummy
#R objects like vectors, lists, matrices, arrays, factors and dataframes
#Boolean TRUE OR FALSE

#Boolean
1<2
p>o

#intro to ggplot
#navigating a workspace
#to display workspace values
ls()
#to delete workspace values
rm(p)
ls()

library("readxl")
read_excel("Hy.xlsx")















