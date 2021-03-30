library(readxl)
library(tidyverse)
library(ipumsr)
library(rstanarm)



if (!require("ipumsr")) stop("Reading IPUMS data into R requires the ipumsr package. It can be installed using the following command: install.packages('ipumsr')")

# this read_ipums_ddi and read_ipums_micro seem to require BOTH the .xml and
# .dat files to run... strange behavior, but it seems to be implicit in the latter IPUMSR::* function
# this is an ongoing point of research

ddi <- read_ipums_ddi("path_to_your_file.xml")
data <- read_ipums_micro(ddi)





# Read in original data
ddi <- read_ipums_ddi("raw_data/usa_00001.xml")

x <- read_ipums_micro(ddi)


# Save file to local machine. Then can comment out above lines. 
saveRDS(data, "raw_data/anyname.rds")

y <- read_rds("raw_data/anyname.rds")


small <- x %>% 
  slice_sample(n = 1000)



