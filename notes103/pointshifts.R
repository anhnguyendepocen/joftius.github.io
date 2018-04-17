
library(ggplot2)

n <- 100
x <- rnorm(n)
y <- 1.5 * x + rnorm(n)

df <- data.frame(
  x = c(x, 2*x, x + 2),
  y = c(y, y, y),
  type = c(rep("x", n), rep("2x", n), rep("x+2", n))
)

ggplot(df, aes(x, y, color = type)) +
  geom_point() + 
  geom_smooth(method = "lm", se = F, aes(color = type)) +
  theme_minimal()



df <- data.frame(
  x = c(x, x, x),
  y = c(y, 2*y, y + 2),
  type = c(rep("y", n), rep("2y", n), rep("y+2", n))
)

ggplot(df, aes(x, y, color = type)) +
  geom_point() + 
  geom_smooth(method = "lm", se = F, aes(color = type)) +
  theme_minimal()