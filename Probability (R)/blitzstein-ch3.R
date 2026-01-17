# help(distributions) in terminal will show all distributions available in R
# In general, for many named discrete distributions, three functions starting with d, p, and r will give the PMF, CDF, and random generation, respectively.

# BINOMAL distribution is associated with 3 R functions: dbinom, pbinom, rbinom
# For Bernoulli distribution, we can just use the Binomial distribution with size = 1

# dbinom is binomial PMF
dbinom(3, 5, 0.2) # P(X = 3) where X ~ Binomial(5, 0.2)

# pbinom is binomial CDF
pbinom(3, 5, 0.2) # P(X <= 3) where X ~ Binomial(5, 0.2)

# rbinom is random generation
# The first argument is the number of random variables to generate
rbinom(7, 5, 0.2) # generate 7 random variables from Binomial(5, 0.2)

# Can also evalute PMFs and CDFs at an entire vector of values
dbinom(0:5, 5, 0.2) # PMF at 0,1,2,3,4,5

# HYPERGEOMETRIC distribution is associated with 3 R functions: dhyper, phyper, rhyper

# dhyper is hypergeometric PMF
dhyper(3, 10, 5, 7) # P(X = 3) where X ~ Hypergeometric(10, 5, 7)

# phyper is hypergeometric CDF
phyper(3, 10, 5, 7) # P(X <= 3) where X ~ Hypergeometric(10, 5, 7)

# rhyper is random generation
# The first argument is the number of random variables to generate
rhyper(7, 10, 5, 7) # generate 7 random variables from Hypergeometric(10, 5, 7)

# DISCRETE DISTRIBUTIONS with finite support
# We can generate r.v.s from any discrete distribution with finite support using the sample function
# sample is more versatile than sample(n,k,replace=TRUE)
# We can sample from vectors we values with provided probabilities

x <- c(1, 2, 3, 4) 
p <- c(0.1, 0.2, 0.3, 0.4)

sample(x, 10, replace=TRUE, prob=p) # generate 10 draws from the PMF defined by x and p