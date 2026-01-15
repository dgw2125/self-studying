# SIMULATING Example 2.2.5
n <- 10^5
child1 <- sample(2,n,replace=TRUE) # older sibling
child2 <- sample(2,n,replace=TRUE) # younger sibling
# 1 is girl, 2 is boy
# alternatively, we can do sample(c("girl","boy"),n,replace=TRUE)

# let A be the event that A be the event that both children are girls 
# let B be the event that the elder child is a girl

n.b <- sum(child1==1)
n.ab <- sum(child1==1 & child2==1)
cat("n.ab/n.b =", n.ab / n.b, "\n") # approximation of P(A|B)

n.b <- sum(child1==1 | child2==1)
n.ab <- sum(child1==1 & child2==1)
cat("n.ab/n.b =", n.ab / n.b, "\n") # approximation of P(A|B) when at least one child is a girl


# SIMULATING Monty Hall Problem
n <- 10^5
car.door <- sample(3,n,replace=TRUE) # car is behind
first.choice <- sample(3,n,replace=TRUE) # player's first choice 
switch.wins <- 0
for (i in 1:n) {
    # Monty opens a door that is neither the player's choice nor has the car
    monty.opens <- setdiff(1:3, c(first.choice[i], car.door[i]))
    if (length(monty.opens) > 1) {
        monty.opens <- sample(monty.opens, 1)
    }
    # Player switches to the remaining door
    remaining.door <- setdiff(1:3, c(first.choice[i], monty.opens))
    if (remaining.door == car.door[i]) {
        switch.wins <- switch.wins + 1
    }
}
cat("Probability of winning by switching =", switch.wins / n, "\n")


# CODING the Monty Hall game
monty <- function() {
    doors <- 1:3

    # Randomly pick where the car is
    car.door <- sample(doors, 1) # car is behind
    
    # Prompt player
    print("Monthy Hall says 'Pick a door, any door!'")

    # Receive the player's choice of door (should be 1, 2, or 3)
    chosen <- scan(what = integer(), nlines = 1, quiet = TRUE)

    # Pick Monty's door (can't be the car door or the player's chosen door)
    if(chosen != car.door) {
        monty.door <- doors[-c(chosen, car.door)]
    } else {
        monty.door <- monty.door <- sample(doors[-chosen], 1)
    }

    # Find out whether the player wants to switch doors
    print(paste("Monty opens door ", monty.door, "!", sep=""))
    print("Would you like to switch doors? (y/n)")
    reply <- scan(what = character(), nlines = 1, quiet = TRUE)

    # Interpret what the player wrote as "yes" if it starts with "y"
    if(substr(reply, 1, 1) == "y") {
        chosen <- doors[-c(chosen, monty.door)]
    }

    # Announce the result of the game!
    if(chosen == car.door) {
        print("You won!")
    } else {
        print("You lost!")
    }
}

# Run monty()
monty()