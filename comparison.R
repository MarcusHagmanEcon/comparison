
set.seed(123)
n <- 10^8

x <- list( x1 = rnorm(n), x2 = rnorm(n), x3 = rnorm(n))
data <- as.data.frame(x)

data$y <- data$x1 + 2 * data$x2

start_time <- proc.time()
reg <- lm(y ~ x1 + x2 + x3, data = data)
end_time <- proc.time()

print(end_time - start_time)
