install.packages("ggplot2")
library(ggplot2)
x<-rnorm(100,mean=0,sd=1)
x
boxplot(x)

y<-rnorm(100,mean=1,sd=1.5)
y
dat<-as.data.frame(cbind(x,y))
dat
boxplot(x,y,xlab= 'x Axis', ylab = 'y Axis', col='blue')
ggplot()+geom_point(data=dat, aes(x=x,y=y),size=3, color="blue")+ ggtitle("ScatterPlot")+labs(x='x Axis', y='y Axis')

