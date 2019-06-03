library(tidyverse)

set.seed(1)

# specify model
population.model <- '
  acad  =~ acad1 + 0.85*acad2 + 1.25*acad3
  alum  =~ alum1 + 0.6*alum2 + 1.4*alum3
  extra =~ extra1 + 0.25*extra2 + 0.8*extra3

  alum  ~ 0.66*acad
  extra ~ 0.52*acad + 0.61*alum
'

# generate data
data <- lavaan::simulateData(population.model, sample.nobs=10000L)

write_csv(data, "university-prestige.csv")