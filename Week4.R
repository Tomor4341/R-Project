library(tidyverse)
n <- 64
p <- 2
x1 <- rnorm(n = n)
y <- 1 + x1 + rnorm(n = n, sd = 1/4)
x2 <- 1 + abs(exp(x1) + rnorm(n = n, sd = 1/4))
dat <- data.frame(x1 = x1, x2 = x2, y = y)

ggplot(dat, aes(x = x1, y=y)) +
  geom_point()

ggplot(dat, aes(x = x2, y=y)) +
  geom_point()


#Log Transformation
dat <- dat %>%
  mutate(x2_new = log(x2))

#Square-Root Transformation
dat <- dat %>%
  mutate(x2_new = sqrt(x2))

ggplot(dat, aes(x = x2_new, y=y)) +
  geom_point()

# --------------------------------------------

data(iris)
library(GGally)
ggpairs(iris, aes (colour = Species))

