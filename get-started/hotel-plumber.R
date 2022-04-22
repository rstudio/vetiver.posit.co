library(tidyverse)
library(tidymodels)
library(vetiver)
library(pins)
library(plumber)
hotels <- read_csv('https://tidymodels.org/start/case-study/hotels.csv')

set.seed(123)
hotel_split <- initial_split(hotels, strata = children)
hotel_train <- training(hotel_split)
hotel_test  <- testing(hotel_split)

rf_recipe <-
    recipe(children ~ ., data = hotel_train) %>%
    step_date(arrival_date) %>%
    step_holiday(arrival_date, keep_original_cols = FALSE)
rf_spec <- rand_forest(mode = "classification")

set.seed(234)
rf_fit <-
    workflow(rf_recipe, rf_spec) %>%
    fit(sample_frac(hotel_train, 0.5))

v <- vetiver_model(rf_fit, "hotel_rf")

pr() %>% vetiver_api(v) %>% pr_run(port = 8080)
