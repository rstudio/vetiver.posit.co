library(tidymodels)
library(vetiver)
library(plumber)

car_mod <-
    workflow(mpg ~ ., linear_reg()) %>%
    fit(mtcars)
v <- vetiver_model(car_mod, "cars_mpg")
pr() %>% vetiver_api(v) %>% pr_run(port = 8080)
