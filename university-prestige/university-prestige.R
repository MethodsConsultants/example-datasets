library(tidyverse)

set.seed(1)

n     <- 10000
acad  <- rnorm(n)
alum  <- acad * 0.2 + rnorm(n, 0, 0.1)
extra <- acad * 1.3 + alum * 0.7 + rnorm(n, 0, 0.3)

# generate data to use for SEM model
data <- tibble(
  acad1  = acad  * 1.1  + rnorm(n, 0, 0.25),
  acad2  = acad  * 0.9  + rnorm(n, 0, 0.15),
  acad3  = acad  * 0.75 + rnorm(n, 0, 0.20),
  alum1  = alum  * 1.25 + rnorm(n, 0, 0.50),
  alum2  = alum  * 0.9  + rnorm(n, 0, 0.30),
  alum3  = alum  * 1.1  + rnorm(n, 0, 0.20),
  extra1 = extra * 0.8  + rnorm(n, 0, 0.20),
  extra2 = extra * 1.1  + rnorm(n, 0, 0.40),
  extra3 = extra * 1.2  + rnorm(n, 0, 0.10)
)

write_csv(data, "university-prestige.csv")