/usr/bin/env Rscript

# 1d

reps = 10000
p = .5
n = 500

x1 = rbinom(reps, n, p)
n1 = rpois(reps, n)

# x2 = rbinom(reps, n1, x1/n1)
# n2 = rpois(reps, n1)
x2 = rbinom(n1, n1, x1/n1)
n2 = rpois(n1, n1)

# x3 = rbinom(reps, n2, x2/n2)
# n3 = rpois(reps, n2)
x3 = rbinom(n2, n2, x2/n2)
n3 = rpois(n2, n2)

# x4 = rbinom(reps, n2, x3/n3)
# n4 = rpois(reps, n2)
x4 = rbinom(n3, n3, x3/n3)
n4 = rpois(n3, n3)


# 1e

mean(x2)


# 1f

sum(x4 > x1) / length(x1)

library(ggplot2)
library(reshape2)
df = data.frame("X1"=x1, "X2"=x2, "X3"=x3, "X4"=x4)
ggplot(df_m) + aes(value) + facet_wrap(~variable) + geom_histogram(binwidth=5)


# 2

n = 10000000
b1 = rbinom(n, 2, .1)
b2 = rbinom(b1, 2, b1/2)
b3 = rbinom(b2, 2, b2/2)
b4 = rbinom(b3, 2, b3/2)
# P(X1 = 1, X4 = 2) = 0.0788885 \approx 71/900
# P(X1 = 1, X4 = 2) = 0.0788885 \approx 71/900
