import numpy as np # numpy is a Python library for fast, efficient math on large sets of numbers
import math

# BASICS - A new lesson or refresher
x = np.array([1,2,3]) # creating an array
print(f"Array x: {x}")
y = x * 10 # elementwise
print(f"Array y: {y}")

# factorial
factorial_result = math.factorial(5)
print(f"The factorial of 5 is {factorial_result}")

# choose
from math import comb 
comb = comb(10,3)
print(f"10 choose 3 is {comb}")

# sample from list
population = ['apple', 'banana', 'cherry', 'date']
sample_size = 2
random_sample = np.random.choice(population, size=sample_size)
print(f"Sample from a list: {random_sample}") # The "f" prefix before a string literal indicates that it is an f-string, enabling a concise and efficient way to embed expressions inside string literals

# sample with custom probabilities
elements = ['A', 'B', 'C']
probabilities = [0.1, 0.7, 0.2] # Probabilities must sum to 1
sample_with_prob = np.random.choice(elements, size=1, p=probabilities)
print(f"Sample with probabilities: {sample_with_prob}")

# sample without replacement
numbers = [1, 2, 3, 4, 5]
unique_sample = np.random.choice(numbers, size=3, replace=False)
print(f"Sample without replacement: {unique_sample}")

# sample with replacement (default) and calculate probability
big_sample = np.random.choice(np.arange(1, 7), size=1000, replace=True) # np.arange is exclusionary for top value
prob_6 = np.mean(big_sample == 6)
print(f"Probability of 6: {prob_6}")


# generate a single random float
single_float = np.random.random_sample()
print(f"Single random float: {single_float}")

# generate an array of random floats
array_of_floats = np.random.random_sample(size=(2, 3)) # 2x3 array
print(f"Array of random floats:\n{array_of_floats}")

# alternative using np.random.rand()
alternative_floats = np.random.rand(2, 3) # equivalent to random_sample(size=(2,3))
print(f"Alternative array of random floats (using rand):\n{alternative_floats}")



# SIMULATION - de Montmort's Matching Problem

# SIMULATION - Birthday Matching Problem

# CALCULATION - Birthday Matching Problem
