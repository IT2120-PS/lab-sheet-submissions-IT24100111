getwd();
setwd("C:\\Users\\it24100111\\Desktop\\IT24100111");
getwd();

data <- read.table("Data.txt",header=TRUE, sep = ",");

fix(data)

names (data) <- c("x1","x2")
fix(data)

attach (data)

#Q1
hist(x2,main="Histogram for Number of Shareholders")

#Q2
histogram <- hist(x2,main="Histogram for Number of Shareholders",breaks = seq(130, 270, length = 8), right = FALSE)

#Q3
histogram$breaks

breaks <- round(histogram$breaks)
breaks

freq <- histogram$counts
freq

mids <- histogram$mids
mids


classes <- c()
classes

for(i in 1:length (breaks)-1){
  classes [i] <- paste0("[", breaks[i], ",", breaks [i+1], ")")
}

classes

cbind(Classes=classes, frequency=freq)


#q4
lines(mids,freq)

plot(mids, freq, type = 'l', main = "Frequency Polygon for Shareholders", ylim = c(0,max(freq)))
plot(mids, freq, type = 'o', main = "Frequency Polygon for Shareholders", ylim = c(0,max(freq)))
plot(mids, freq, type = 'p', main = "Frequency Polygon for Shareholders", ylim = c(0,max(freq)))

#Q5
cum.freq <- cumsum(freq)
cum.freq

new<-c()

for(i in 1:length(breaks)){
  if(i == 1){
      new[i]= 0
    }else{
      new[i]= cum.freq[i-1]
    }
}

plot(breaks, new, type = 'l', main = "Cumalative Frequency Polygon for Shareholders",
     xlab = "Shareholders", ylab = "Cumulative Frequency", ylim = c(0,max(cum.freq)))

cbind(Upper = breaks, CumFreq = new)


#Exercise

#1
setwd("C:\\Users\\IT24100111\\Desktop\\IT24100111")

DeliveryTimes <- read.table("Exercise - Lab 05.txt", header=TRUE)
fix(DeliveryTimes)

names(DeliveryTimes) <- c("Time")
fix(DeliveryTimes)
attach(DeliveryTimes)

#2
hist(Time,
     breaks = seq(20, 70, by = 5),
     right = FALSE,
     main = "Histogram for Delivery Times",
     xlab = "Delivery Time (minutes)",
     col = "lightblue", border = "black")

#Q3


#Q4
histogram <- hist(Time,
                  breaks = seq(20, 70, by = 5),
                  right = FALSE,
                  plot = FALSE)

breaks <- histogram$breaks
freq <- histogram$counts
cum.freq <- cumsum(freq)
new <- c(0, cum.freq)

plot(breaks, new, type = "l",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "blue", lwd = 2)

points(breaks, new, pch = 16, col = "red")

cbind(Upper = breaks, CumFreq = new)

