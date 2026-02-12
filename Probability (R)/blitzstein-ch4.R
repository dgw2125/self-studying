# GEOMETRIC DISTRIBUTION
# 3 functions for the geometric distribution: dgeom, pgeom, rgeom, corresponding to the PMF, CDF, and random generation, respectively
# For dgeom and pgeom, the first argument is the number of failures before the first success, and the second argument is the success probability p
# For rgeom, the first argument is the number of random variables to generate, and the second argument is the success probability p

dgeom(3, 0.5)
pgeom(3, 0.5)
rgeom(100, 0.8) # generate 100 random variables from Geometric(0.8)

# NEGATIVE BINOMIAL DISTRIBUTION
# 3 functions for the negative binomial distribution: dnbinom, pnbinom, rnbinom, corresponding to the PMF, CDF, and random generation, respectively
# For dnbinom and pnbinom, the first argument is the number of failures before the r-th success, and the second argument is the number of successes r, and the third argument is the success probability p
# For rnbinom, the first argument is the number of random variables to generate, and the second argument is the number of successes r, and the third argument is the success probability p

dnbinom(3, 5, 0.5)
pnbinom(3, 5, 0.5)
rnbinom(10, 5, 0.5) # generate 10 random variables from Negative Binomial(5, 0.5)

# MATCHING SIMULATION
# Mirroring example 4.4.4. What's the expected number of "matches," when card n is in the nth position in a shuffled deck?

n <- 100
r <- replicate(10000, sum(sample(n) == 1:n)) # simulate the number of matches in a random permutation of 1:n, repeated 10000 times
mean(r)
print(mean(r)) # This is very close to the expected value of 1

# DISTINCT BIRTHDAYS SIMULATION
# Mirroring example 4.4.5. In a group of k people, what's the expected number of distinct birthdays?

k <- 20
r <- replicate(10000, {bdays <- sample(365, k, replace=TRUE); length(unique(bdays))}) # simulate the number of distinct birthdays in a group of k people, repeated 10000 times
mean(r)
print(mean(r)) # This should be very close to the expected value
print(365*(1 - (364/365)^k)) # This is the expected value of the number of distinct birthdays, which matches our simulation result
