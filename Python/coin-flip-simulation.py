import numpy as np

# define coin flip method
def simulate_coin_flips_heads(n_flips):
    # heads = 1, tails = 0
    flips = np.random.choice([0, 1], size=n_flips)
    prob_heads = np.mean(flips == 1)
    return prob_heads

# coin flip simulation
flips_100 = simulate_coin_flips_heads(100)
flips_1000 = simulate_coin_flips_heads(1000)
print(f"Proportion of heads in 100 flips: {flips_100}")
print(f"Proportion of heads in 1000 flips: {flips_1000}")