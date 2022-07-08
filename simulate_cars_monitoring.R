library(tidyverse)
library(faux)

set.seed(123)
new_mtcars <- sim_df(mtcars, 50)

new_mtcars %>%
    select(-id) %>%
    mutate(date_obs = as.Date("2022-03-14") + 1:50) %>%
    write_csv("get-started/new-cars.csv")
