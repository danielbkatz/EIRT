#install packages to get data
install.packages("RCurl")
library(RCurl)

#get the data read in. Have to be connected to internet. 
data1 <- getURL("https://raw.githubusercontent.com/danielbkatz/EIRT/master/eirtdata.csv")
eirtdata <- read.csv(text = data1)
eirtdata <- eirtdata[-1]

#optional, if you want to save the data as a csv file on your computer. Note, it adds a column.
write.csv(eirtdata, "eirtdata.csv")

#make sure these person level covariates are treated as factors
eirtdata$treat <- as.factor(eirtdata$treat)
eirtdata$proflevel <- as.factor(eirtdata$proflevel)
eirtdata$abilcov <- as.factor(eirtdata$abilcov)
