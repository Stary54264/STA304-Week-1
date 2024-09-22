#### Workspace setup ####
# install.packages("tidyverse")
# install.packages("janitor")
library(tidyverse)
library(janitor)

#### Simulate dataset ####
simulated_data <-
  tibble(
    "Division" = 1:338,
    "Party" = sample(
      x = c("Liberal", "Conservative", "Bloc Québécois",
            "New Democratic", "Green", "Other"),
      size = 338,
      replace = TRUE
    )
  )

head(simulated_data)