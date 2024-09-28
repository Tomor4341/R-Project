

library(palmerpenguins)
library(tidyverse)
penguins

ggplot(data = penguins, mapping = aes(x = species, y = body_mass_g)) +
  geom_boxplot(aes(col = species)) + labs(x = "Species", y = "Body Mass (g)")


ggplot(penguins, aes(x = body_mass_g)) + 
  geom_histogram(position = 'identity') +
  labs(x = "Body Mass (g)",
       y = "Frequency")

ggplot(data = penguins, aes(x = body_mass_g)) +
  geom_histogram(aes(fill = species), alpha = 0.4, position = "identity") +
  labs(x = "Body Mass (g)",
       y = "Frequency")



