install.packages("RCurl")
library(RCurl)
data1 <- getURL("https://raw.githubusercontent.com/danielbkatz/sum_explanatory_work/EIRT_tutorial/EIRTdata.csv")
eirtdata <- read.csv(text = data1)
names(eirtdata)[1] <- "id"

write.csv(eirtdata, "eirtdata.csv")
