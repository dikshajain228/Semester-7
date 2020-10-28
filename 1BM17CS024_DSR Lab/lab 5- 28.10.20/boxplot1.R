empid<-c(101,102,103,104,105,106,107,108,109,110)
salary<-c(10000,13000,50899,28900,23000,26789,90987,76433,50000,29000)
maritalStatus<-c('married','bachelor','bachelor','married','bachelor','married','married','bachelor','bachelor','married')
dataframe<-data.frame(salary,maritalStatus)
dataframe
boxplot(salary~maritalStatus,data=dataframe)
