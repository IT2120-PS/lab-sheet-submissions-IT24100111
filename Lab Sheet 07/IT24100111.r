setwd("//Users//kushancs//Desktop//PS//LabSheet07")

##Question 01
#Part 1
punif(10,min = 0, max = 30, lower.tail = TRUE)

#Part 2
1-punif (20,min = 0, max = 30, lower.tail = TRUE)

punif(20,min = 0, max = 30, lower.tail = FALSE)

##Question 02
#Part 1
pexp(3, rate = 0.5,lower.tail = TRUE)

#Part 2
1-pexp(4, rate = 0.5,lower.tail = TRUE)

pexp(4, rate = 0.5,lower.tail = FALSE)

#Part 3
pexp(4, rate = 0.5,lower.tail = TRUE)-pexp(2,rate = 0.5,lower.tail = TRUE)

##Question 03
#Part 1
1-pnorm(37.9, mean = 36.8, sd=0.4, lower.tail = TRUE)

#Part 2
pnorm(36.9, mean = 36.8, sd=0.4, lower.tail = TRUE)-pnorm(36.4, mean = 36.8, sd=0.4, 
                                                          lower.tail = TRUE)

#Part 3
qnorm (0.012, mean = 36.8, sd=0.4, lower.tail = TRUE)

#Part 4
qnorm(0.01, mean = 36.8, sd=0.4, lower.tail = FALSE)

#Exercise

#Part 1
punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)

#Part 2
pexp(2, rate = 1/3, lower.tail = TRUE)

#Part 3
#i
pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)

#ii
qnorm(0.95, mean = 100, sd = 15)





