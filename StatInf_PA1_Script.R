# script for statinf project

# assign simulation parameters
set.seed(42)
lam = .5
n <- 40
simulations <- 1000

# run & plot the experiment
exp_means <- NULL
for (i in 1:simulations) {
  exp_means <- c(exp_means, mean(rexp(n, lam)))
}
hist(exp_means)

# mean
mean_sample <- mean(exp_means)
mean_theory <- 1/lam

# variance
var_sample <- var(exp_means)
var_theory <- 1/(lam^2 * n)

