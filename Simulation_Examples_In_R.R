####Simulation of coin flip####
coin <- c("Heads", "Tails")
set.seed(1)
flips <- sample(coin, 6, replace = TRUE) #flip coin 6 times
length(flips[flips=="Heads"])

#Do it 100 times
more_flips <- replicate(100, length(sample(coin, 6, replace = TRUE)[flips=='Heads']))
mean(more_flips)


### Use R to simulate the probability of getting (at least one) 8 in the sum of two dice rolls
set.seed(101)
trials <- 10000
dice_1 <- sample(x=1:6, size=trials, replace=T, prob = NULL)
dice_2 <- sample(x=1:6, size=trials, replace=T, prob = NULL)
result <- dice_1 + dice_2
mean(result == 8)

### Generating Random Numbers
x <- rnorm(10)
x <- rnorm(10, 20, 2)

###Simulate the following linear model
#y = B0 + B1 + e
#B0 = .5, B1 = 2
set.seed(20)
x <- rnorm(100) #if x is binary: x <- rbinom(100, 1, .5), .5 is prob of it being a 1
e <- rnorm(100, 0, 2)
y <- .5 + 2*x + e
summary(y)
plot(x,y)
