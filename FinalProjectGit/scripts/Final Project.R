library(tidyverse)
library(dplyr)
library(tidyr)

ghettoer <- read_csv(file = "data/Ghettoer_clean.csv")
hårdeghettoer <- read_csv(file = "data/Hårde_clean.csv")
udsatte <- read_csv(file = "data/Udsatte_clean.csv")

samlet <- merge(x=udsatte, y=ghettoer, by = "Område", all.x = TRUE)

ghetto2 <- read_csv2(file = "data/Ghettoer_clean.csv")

library(RcolorBrewer)
display.brewer.all()
