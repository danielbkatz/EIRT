#install packages to get data
install.packages("tidyverse")
install.packages("TAM")
install.packages("lme4")
install.packages("readr")
library(readr)
library(tidyverse)
library(lme4)
library(TAM)

#get the data read in. Have to be connected to internet. 
eirtdata <- read_csv("https://raw.githubusercontent.com/danielbkatz/EIRT/master/eirtdata.csv")

#get rid of the extra column
eirtdata <- eirtdata[-1]

#optional, if you want to save the data as a csv file on your computer. Note, it adds a column.
write.csv(eirtdata, "eirtdata.csv")

#make sure these person level covariates are treated as factors
eirtdata$treat <- as.factor(eirtdata$treat)
eirtdata$proflevel <- as.factor(eirtdata$proflevel)
eirtdata$abilcov <- as.factor(eirtdata$abilcov)
