install.packages("RCurl")
library(RCurl)
data1 <- getURL("https://raw.githubusercontent.com/danielbkatz/EIRT/master/eirtdata.csv")
eirtdata <- read.csv(text = data1)
eirtdata <- eirtdata[-1]

#optional, if you want to save the data as a csv file on your computer. Note, it adds a column.
write.csv(eirtdata, "eirtdata.csv")
