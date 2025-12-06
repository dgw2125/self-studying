v <- c(3,1,4,1,5,9)


# SIMULATION - de Montmort's Matching Problem

n <- 100 #number of cards

r <- replicate(10^4, sum(sample(n)==(1:n))) 
# Replicate 10^4 times
# sum(sample(n) == (1:n) checks the equivalency at each position of each vector
# Equivalency will give you a Boolean TRUE = 1, FALSE = 0
# If the value of the sum is greater or equal to 1, then that means there was at least one equivalency)

sum(r>=1)/10^4
# sum(r>=1) returns the sum of times r>=1 is TRUE for each parameter of the vector


# SIMULATION - Matching Birthdays

k <- 23 # number of random people in a room

b <- sample(1:365,23,replace=TRUE)
# samples 23 times a value from a vector 1:365 (a.k.a. [1,2,3, ..., 365]) 
# replace = TRUE means the sampling is with replacement

tabulate(b)
table(b) 
# these do the same thing but output different formats

r <- replicate(10^4, max(tabulate(sample(1:365,23,replace=TRUE))))
sum(r>=2)/10^4
# sum(r>=2) returns the sum of times r>=2 is TRUE for each parameter of the vector

# MATHEMATICAL FORMULA - Matching Birthdays

1-prod((365-k+1):365)/365^k
# mathematical formula
# calculates the probability there's a shared birthday by using the probability nobody shares a birthday
# prod gives the product of a vector; in this case it looks like 365 * 364 * ... (365-k+1)


# BUILT IN FORMULAS - Matching Birthdays
x <- 23 # number of random people in a room
pbirthday(x) # returns the probability of at least one match
p <- 0.5
qbirthday(p) # returns the number of people of needed in order to have a probability p of at least one match
pbirthday(x, coincident=3) # coincident allows user to specify how many people in the match
qbirthday(p, coincident=3)
