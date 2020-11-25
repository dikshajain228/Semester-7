temp<-c(50,53,54,55,56,59,62,65,67,71,72,74,75,76,79)
yeild<-c(122,118,128,121,125,136,144,142,149,161,167,168,162,171,175)

d<-data.frame(temp,yeild)
d

d.lm=lm(temp~yeild,data=d)

summary(d.lm)

names(d.lm)#components of linear regression

d.lm$coefficients

newypred<-fitted(d.lm)
newypred

residuals(d.lm)

plot(d$yeild,d$temp,col="red",xlab="yeild",ylab="temperature")
abline(coef(d.lm),lty=1,col="blue")
plot(d.lm,which=1)
