getwd()
setwd("C:/Users/Dell/Documents/R")
getwd()
grep(".csv",list.files(),value=T)
bankData<-read.csv("bank-data.csv")
bankData
head(bankData)
summary(bankData)
plot(bankData[,'age'],bankData[,'income'])
colnames(bankData)


