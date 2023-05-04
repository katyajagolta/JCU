
#---------------------------------------------#
# MB5370 Module 1: Introduction to Programming ####
# Katya Jagolta
# February 2023

# Workspace
# ~/MB5370 Techniques in Mar Sci 1/Module_01.R
#---------------------------------------------#

library(ggplot2)
library(tidyr)

# Workshop 1 ####

#---------------------------------------------#
# 2.3.7 Variables, objects, and assignment ####

apple <- 15+25.1+20.25 # Exercise: sum numbers
banana <- 17
apple + banana


#---------------------------------------------#
# 2.3.9 Built in functions ####

years_old <- 26.7
round(years_old) # rounds up
floor(years_old) # rounds down

name <- "Katya"
years_old <- 26.765
round(years_old, 2) #rounds to 2 decimal places

paste(name, "is", years_old, "years old.")


#---------------------------------------------#
# 2.3.10 Debugging ####

# Misconceptions
grade <- 55
total <- grade + 10
print (total)
grade <- 90
print (total) # value of total is a spreadsheet will be 100, but in programming a variable holds the value it was assigned (65)
total <- grade + 10
print (total) # executed in the way it was defined

#  What will this code do?
p <- 2
z <- 5
out <- p*z # Value should equal 10
print (out) # Value does equal 10 yay

# Error reports
out <- p * a # a is an undefined variable
## > Error: object 'a' not found
out <- p * z
out

# Testing
x <- 1
is.character(x) # x is not a character 
is.numeric(x) # x is numeric

# Exercise: identify problems in this code...
my_quiz <- c("uno",
             "dos",
             "tres",
             "quatro" # Missing a comma
             "cinco")
print (my_quis) # Misspelled "my_quiz"
str(my_quiz)
len(my_quiz) # Function should be length()

# Testing:
my_quiz <- c("uno",
             "dos",
             "tres",
             "quatro",
             "cinco")
print (my_quiz)
str(my_quiz) # Tells you the data type
length(my_quiz) # Tells you the length/number of words


#---------------------------------------------#
# 2.3.11 Data types ####

str(x)
class(x)
length(x)
attributes(x)

# Exercise: try to produce the 4 data types (character, numeric, integer, logical)

# Character:
char <- "testing"
class(char)

# Numeric:
num <- 7
class(num)

# Integer:
int <- as.integer(num)
class(int)

# Logical:
log <- FALSE
class(log)


#---------------------------------------------#
# 2.3.12 Data structures ####

y <- c(1, 2, 3) # A vector of numeric elements
z <- c("Sarah", "Tracy", "Jon") # A vector of character elements 
zz <- c(1, "Sarah", 3, "Jon")
yy <- list(1, "a", TRUE) # A list

class(y) # Classifies as numeric
class(z) # Classifies as character
class(zz) # Classifies as character
class(yy) # Classifies as a list

z[3] # Returns the 3rd element in the vector z


#---------------------------------------------#
# 2.3.13 Packages and libraries  ####

# Already have ggplot2, tidyr, and dplyr installed

# install.packages("earthones")
# Unsuccessful!! Package ‘earthones’ is not available for this version of R

# install.packages("redlistr")
# Success

# install.packages("terra")
# Success


x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x
y <- x^3
y
qqplot(x,y) # Workbook had "qplot" but function is "qqplot"


#---------------------------------------------#
# 2.3.14 Coding best practices  ####
# Headers are at top of script along with calling packages ggplot2 and tidyr



#---------------------------------------------#
# Workshop 2 ####

#---------------------------------------------#
# 3.1.1 Learning about for-loops  ####


for (value in c("My", "first", "for", "loop")) { print("one run")
} # Returns "one run" 4 times, one for each word

for (value in c("My", "second", "for", "loop")) { print(value)
} # Returns each of the 4 words

for (word in c("My", "third", "for", "loop")) { print(word)
} # Uses "value" instead of "word"; still returns each of the 4 words

for (word in c("My", "fourth", "for", "loop")) { print(word)
  Sys.sleep(1)
} # sys.sleep() suspends execution of R expressions for a specified time interval, in this case 1 second to print each word
# Helpful if you want to watch & check what your code is doing as it runs, for example


# Custom for loop:
my_list <- 1:50
my_list
str(my_list) # Tells you it's 50 elements long

for (i in my_list) {
  result <- i
  out <- paste("I am printing loop number:", result, ".")
  print(out)
  Sys.sleep(0.6)
} # For i, meaning every single element in my_list, this for loop will print "I am printing loop number i."
print("For loop complete") # And then will say "For loop complete" when it is complete!


# Adding a constant outside the loop
add_me <- 500

for (i in my_list) {
  result <- i + add_me
  out <- paste("I am printing loop number:", result, ".")
  print(out)
  Sys.sleep(0.2)
} # For each i, this for loop will print "I am printing loop number (i+500)."
print("For loop complete") # And then will say "For loop complete" when it is complete!


# Nested for loop
for (i in c(1,2,3,4,5)) {
  print(paste("I am base loop number: ", i))
  Sys.sleep(0.5)
  for (j in c("a","b","c")) {
    print(paste("... I am inside loop ", j))
  }
} # For each round of the base loop (i), it runs all of the inside loop (j), producing something kind of like an outline in this case (1 abc, 2 abc, 3 abc, etc.)
print("Nested loop complete :)")


# Exercise: for loop to list my favorite animals
numbers <- c(1,2,3,4,5)
animals <- c("tiger shark", "lobster", "blue crab", "shrimp", "cuttlefish")

for (i in numbers) {
  print(paste("My number", i, "favorite animal is a", animals[i]))
}
print("Thanks for coming to my TedTalk.")



#---------------------------------------------#
# 3.1.2 If and if-else statements  ####

x <- 1

if (x == 1) {
  x <- 2
} # Says if x equals 1, it now equals 2 (reassigns x)

x == 1 # FALSE
x == 2 # TRUE, x now equals 2

if (x == 1) {
  print(paste("x is:", x))
} else {
  print("We're running the else statement")
  print(paste("x is:", x))
} # x is 2


# Exercise: make my own if else statement 
name <- "Katya"

if (name == "Katya") {
  last_name <- "Jagolta"
} # Says if the name is Katya, the last name is Jagolta
print(paste(name, last_name)) # Prints my full name, Katya Jagolta


# Changing the name
name <- "Kaysha"

if (name == "Katya") {
  last_name <- "Jagolta"
} else {
  last_name <- "Kenney"
} # Says if the name is Katya, the last name is Jagolta; otherwise, the last name is Kenney
print(paste(name, last_name)) # We reassigned name to "Kaysha", so it prints Kaysha Kenney


# Changing name back to see what that same if/else statement does
name <- "Katya"

if (name == "Katya") {
  last_name <- "Jagolta"
} else {
  last_name <- "Kenney"
}
print(paste(name, last_name)) # Returns the correct name, Katya Jagolta


# Adding a new first name without an associated last name
name <- "Kyle" # Changing the name again

if (name == "Katya") {
  last_name <- "Jagolta"
} else if (name == "Kaysha"){
  last_name <- "Kenney"
} else {
  last_name <- "... last name is unknown"
} # Says if name is Katya, last name is Jagolta; if name is Kaysha, last name is Kenney; otherwise, the last name is unknown.
print(paste(name, last_name)) # Prints "Kyle... last name is unknown"


#---------------------------------------------#
# 3.1.3 Functions  ####

temp_C <- (temp_F - 32) * 5/9 # Formula to convert F to C
temp_C <- (100-32) * 5/9 # Convert 100 F to C = 38 C
temp_C <- (200-32) * 5/9 # Convert 200 F to C = 93 C


# Make a function to convert F to C so we don't have to type this equation every time

F_to_C <- function(temp_F){
  temp_C <- (temp_F - 32) * 5/9
  return(temp_C)
}

F_to_C(100) # Converting 100 F to C = 38 C, correct
F_to_C(200) # Says 200 F = 93 C, correct


# Exercise: write a function to convert celcius to fahrenheit 
temp_F <- temp_C * 9/5 + 32 # Formula to convert F to C

C_to_F <- function(temp_C){
  temp_F <- temp_C * 9/5 + 32
  return(temp_F)
}

C_to_F(0) # = 32F, correct
C_to_F(20) # = 68F, correct
C_to_F(40) # = 104F, correct


#---------------------------------------------#
# 3.1.4 Data frames  ####

my_dataframe <- data.frame(number = c(1,2,3), 
                           name = c("Katya", "Kaysha", "Kyle"),
                           logical = c(TRUE, TRUE, FALSE))
my_dataframe
str(my_dataframe) # Check structure of my_dataframe - col1 is numeric, col2 character, col3 logical

my_dataframe$no = as.factor(my_dataframe$no) # Convert col1 from numeric to factor (a category rather than a real continuous number)
str(my_dataframe) # Col1 now factors


#---------------------------------------------#
# 3.1.7 Markdown and knitr  ####

system.file(package='knitr') # Confirming knitr is already installed





