list.files()
getwd()
setwd("C:/Users/Dell/Documents/R")
getwd()
delim <- read.delim("perfume.csv", sep = ',')
delim
head(delim)
colnames(delim)

new <- delim
temp<-data.frame(num=c(1:100))
temp
new<-cbind(new,new_col=temp)
new
head(new)

