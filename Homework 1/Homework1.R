# Number 2
#Part A
t <- 1:1000
sig <- rnorm(1000, mean=0, sd=1)
plot(x=t,y=sig)

lag.plot(sig,lags=2)

#Part B
mean(sig)
var(sig)

covar <- acf(sig, lag.max = 500, type = "covariance")
# Average Auto-Covariance over all time lags from 0->500
mean(covar$acf)

auto_cor <- acf(sig, lag.max = 500, type = "correlation")
plot(auto_cor$acf)
# Average Auto-Correlation over all time lags from 0->500
mean(auto_cor$acf)

#Part C

x <- vector()
x[0] <- 0
cumsum(x)
sums <- 0:10
x <- cumsum(sig)
