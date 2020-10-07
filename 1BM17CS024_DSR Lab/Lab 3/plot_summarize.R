bank<-read.csv("C:/Users/Dell/Documents/R/bank-data.csv", header = TRUE)
bank
summary(bank)
colnames(bank)
plot(bank[,'age'],bank[,'income'])
