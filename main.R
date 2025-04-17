library(tidyverse)
library(here)
library(dplyr)

tv_hours_tabulation <- gss_cat %>% 
  filter(age < 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours,na.rm = TRUE))
write_csv(tv_hours_tabulation,here("tv_hours_by_marital.csv"))

