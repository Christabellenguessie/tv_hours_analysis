library(tidyverse)
library(here)


tv_hoours_table <- gss_cat %>% group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours,na.rm = TRUE))
write_csv(tv_hoours_table,here("tv_hours_by_marital.csv"))
