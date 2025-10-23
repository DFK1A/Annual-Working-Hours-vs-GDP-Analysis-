#calculate the mean, median, and mode
mean_WH   <- mean(AWH$WH)
median_WH <- median(AWH$WH)
mode_WH   <- names(table(AWH$WH))[which.max(table(AWH$WH))]

#Calculate the range, variance and standard deviation
range_WH <- range(AWH$WH)
var_WH   <- var(AWH$WH)
sd_WH    <- sd(AWH$WH)

#Draw histogram with density
hist(AWH$WH, prob = TRUE)
lines(density(AWH$WH), col = 2, lwd = 3)

#Calculate the skewness and kurotosis
skewness(AWH$WH)
kurtosis(AWH$WH)
