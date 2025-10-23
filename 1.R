library(ggplot2)
library(dplyr)
library(readr)
library(tidyverse)
library(readxl)
library(FactoMineR)
library(factoextra)
library(moments)

AWH <- read_csv("C:/Data Science Social Studies/WEEK3/annual-working-hours-vs-gdp-per-capita-pwt.csv")
View(AWH)

AWH <- na.omit(AWH)
View(AWH)

colnames(AWH)[c(1, 4, 5, 6)] <- c("Country", "WH", "GDP", "POP")
View(AWH)
