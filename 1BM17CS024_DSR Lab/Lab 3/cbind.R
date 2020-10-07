list.files()
getwd()
setwd("C:/Users/Dell/Documents/R")
getwd()
bank_delim <- read.delim("bank-data.csv", sep = ',')
bank_delim
head(bank_delim)
colnames(bank_delim)

new_bank <- bank_delim
temp<-data.frame(Agent=c("Diksha","Pragati","Ananya","Anjali","Aishwarya","Chandana"))
temp
new_bank<-cbind(new_bank,new_col=temp)
new_bank
head(new_bank)

