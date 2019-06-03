library(tidyverse)

set.seed(1)

# specify model
population.model <- '
  acad  =~ acad1 + 0.85*acad2 + 9*acad3 + 0.8*acad4 + 0.95*acad5
  alum  =~ alum1 + 0.8*alum2 + 0.82*alum3
  extra =~ extra1 + 0.9*extra2 + 0.95*extra3

  alum  ~ 0.8*acad
  extra ~ 0.875*acad + 0.925*alum
'

# generate data
data <- lavaan::simulateData(population.model, sample.nobs=10000L)

write_csv(data, "university-prestige.csv")