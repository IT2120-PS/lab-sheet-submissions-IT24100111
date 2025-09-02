setwd("C:\\Users\\it24100111\\Desktop\\IT24100111")

## Question 1:
n <- 44
p <- 0.92

## Question 01
## Part 1: Binomial Distribution
# Random variable X has binomial distribution with n = 44 and p = 0.92

## Part 2: P(X = 40)
dbinom(40, 44, 0.92)

## Part 3: P(X <= 35)
pbinom(35, 44, 0.92, lower.tail = TRUE)

## Part 4: P(X >= 38)
# Method 1: Using 1 - P(X <= 37)
1 - pbinom(37, 44, 0.92, lower.tail = TRUE)

# Method 2: Using lower.tail = FALSE (recommended)
pbinom(37, 44, 0.92, lower.tail = FALSE)

## Part 5: P(40 <= X <= 42)
pbinom(42, 44, 0.92, lower.tail = TRUE) - pbinom(39, 44, 0.92, lower.tail = TRUE)


## Question 02
## Part 1: Random variable X
# X = Number of babies born in a hospital on a given day

## Part 2: Poisson Distribution
# X ~ Poisson(lambda = 5)

## Part 3: P(X = 6)
dpois(6, 5)

## Part 4: P(X > 6)
ppois(6, 5, lower.tail = FALSE)


## Exercise 1
#Part1
#Binomial Distribution
#n=50 and p=0.85

#Part2
#P(X >= 47) = 1 - P(X <= 46)

1 - pbinom(46, 50, 0.85, lower.tail = TRUE)

#Alternatively, use lower.tail = FALSE for P(X > 46) = P(X >= 47)
pbinom(46, 50, 0.85, lower.tail = FALSE)

## Exercise 2
#Part1
#Random variable X: Number of customer calls received in one hour

#Part2
#Poisson distribution
#lambda = 12

#Part3
# P(X = 15).

dpois(15, 12)