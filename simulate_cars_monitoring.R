library(tidyverse)
library(faux)

set.seed(123)
new_mtcars <- sim_df(mtcars, n = 50) %>%
    mutate(across(c(cyl, vs, am, gear, carb), round),
           across(c(cyl, vs, am, gear, carb), abs))


new_mtcars %>%
    select(-id) %>%
    mutate(date_obs = as.Date("2022-03-20") + 0:49) %>%
    write_csv("get-started/new-cars.csv")
