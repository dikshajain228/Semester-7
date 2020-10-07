list.files()
getwd()
setwd("C:/Users/Dell/Documents/R")
getwd()

bank_delim <- read.delim("bank-data.csv", sep = ',')
bank_delim

temp<-data.frame(Agent=c("Diksha","Pragati","Ananya","Anjali","Aishwarya","Chandana"))
temp
new_bank<-cbind(bank_delim,new_col=temp)
new_bank
bdata<-data.frame(new_bank)
bdata
write.table(bdata,file="C:\\Users\\Dell\\Desktop\\bank.txt",append= FALSE, sep = "\t",row.names = FALSE)
