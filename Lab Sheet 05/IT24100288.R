#1
setwd("C:\\Users\\it24100288\\Desktop\\IT24100288\\Lab05")
data <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")

fix(data)
attach(data)
names(data) <- "X2"
attach(data)

#2
histogram <- hist(X2,
                  main = "Histogram for Delivery Times",
                  xlab = "Delivery Times",
                  ylab = "Frequency",
                  breaks = seq(20, 70, length = 10),
                  right = FALSE)

#4
cum.freq <- cumsum(histogram$counts)
new <- c()

for (i in 1:length(histogram$breaks)) {
  if (i == 1) {
    new[i] <- 0
  } else {
    new[i] <- cum.freq[i-1]
  }
}

plot(histogram$breaks,
     new,
     type = "b",
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum.freq)))
