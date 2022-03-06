library(gapminder)
view(gapminder)
data <- select(gapminder, country, year, lifeExp)
#long data to wide data
wide_data <- data %>% 
  pivot_wider(names_from = year, values_from= lifeExp)
#wide data to long data
long_data <- wide_data %>% 
  pivot_longer(2:13,
               names_to= "year",
               values_to = "lifeExp")
