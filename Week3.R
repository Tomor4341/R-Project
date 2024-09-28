load("/Users/thomasmac/Downloads/births (1).Rdata")
library(dplyr)
str(births)
head(births)
options(scipen = 999)


# Aggregate data by day of the week
weekly_births <- births %>%
  group_by(day_of_week) %>%
  summarise(total_births = sum(births))

# Bar plot of births by day of the week
ggplot(data = weekly_births, aes(x = day_of_week, y = total_births)) +
  geom_col(fill = "lightgreen") +
  labs(title = "Total Births by Day of the Week",
       x = "Day of the Week",
       y = "Total Number of Births") +
  theme_minimal()

# --------------------------------------------

library(palmerpenguins)
library(ggplot2)
ggplot(data = penguins, aes(x = bill_length_mm,
                            y = bill_depth_mm,
                            group = species)) +
  geom_point(aes(color = species,
                 shape = species)) +
  geom_smooth(method = "lm", se = FALSE, aes(color = species)) +
  labs(title = "Penguin bill dimensions",
       subtitle = "Bill length and depth for Adelie, Chinstrap and Gentoo Penguins",
       x = "Bill length (mm)",
       y = "Bill depth (mm)",
       color = "Penguin species",
       shape = "Penguin species")

ggplot(data=penguins, aes(x = bill_length_mm,
                          y = bill_depth_mm)) +
  geom_point()+
  geom_smooth(method = "lm", se = FALSE)
