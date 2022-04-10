#NOMOR 5
lambda = 3

#5a
dexp(lambda)

#5b Histogram
par(mfrow = c(2,2))
set.seed(1)
hist(rexp(10))
set.seed(1)
hist(rexp(100))
set.seed(1)
hist(rexp(1000))
set.seed(1)
hist(rexp(10000))

#5c
rataan = lambda
varian = lambda^2