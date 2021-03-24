library(readxl)
library(tidyverse)
library(ipumsr)
library(rstanarm)

ddi <- read_ipums_ddi("raw_data/usa_00001.xml")

data <- read_ipums_micro(ddi)

# Save file to local machine. Then can comment out above lines. 
saveRDS(data, "raw_data/anyname.rds")

read_excel

