# libraries - if they don't load
# install.packages("tidyverse")
library(dplyr)
library(readr)
library(ggplot2)
library(forcats)

theme_set(theme_bw(base_size=12))

ice <- read_csv("http://biol607.github.io/homework/data/NH_seaice_extent_monthly_1978_2016.csv") %>%
  mutate(Month_Name = factor(Month_Name),
         Month_Name = fct_reorder(Month_Name, Month))
