# data from https://archive.ics.uci.edu/ml/datasets/automobile

# libraries ----
if (!require("pacman")) {
  install.packages("pacman") }
library(pacman)

pacman::p_load(tidyverse,here, janitor, update = FALSE)
pacman::p_unload(here, janitor)

# read data ----

# notes <- read.csv(here::here('car_prices/imports-85.names'))
# faster to manually do this
c_names <- c('symboling','normalized_losses','make','fuel_type',
             'aspiration','num_of_doors','body_style','drive_wheels',
             'engine_location','wheel_base','length','width','height',
             'curb_weight','engine_type','num_of_cylinders',
             'engine_size','fuel_system','bore','stroke',
             'compression_ratio','horsepower','peak_rpm','city_mpg',
             'highway_mpg','price')

df <- read.csv(here::here('car_prices/imports-85.data'),
                 na.strings = '?', col.names = c_names)



