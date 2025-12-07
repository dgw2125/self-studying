import numpy as np

# define rolling a die
def simulate_die_rolls_6(n_rolls):
    rolls = np.random.choice(np.arange(1, 7), size=n_rolls)
    prob_6 = np.mean(rolls == 6)
    return prob_6

# define rolling two dice
def simulate_two_dice_sum_7(n_rolls):
    die1 = np.random.choice(np.arange(1, 7), size=n_rolls)
    die2 = np.random.choice(np.arange(1, 7), size=n_rolls)
    sum = die1 + die2
    prob_sum_7 = np.mean(sum == 7)
    return prob_sum_7

# die roll simulation
prob_6 = simulate_die_rolls_6(10000)
print(f"Proportion of rolling a 6 over 10000 rolls: {prob_6}")

# 2 dice simulation
prob_sum_7 = simulate_two_dice_sum_7(100000)
print(f"Proportion of a sum of 7 over 100000 trials: {prob_sum_7}")