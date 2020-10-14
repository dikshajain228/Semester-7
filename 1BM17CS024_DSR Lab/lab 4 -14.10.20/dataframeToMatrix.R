BuffTail<-c(10,1,37,5,12)
GardenBee<-c(8, 3, 9, 6, 4)
RedTail<-c(18, 9, 12, 4, 6)
Carderbee<-c(8, 27, 6, 32, 23)
HoneyBee<-c(12, 13, 16, 9, 10)
dt=data.frame(BuffTail,GardenBee,RedTail,Carderbee,HoneyBee)
dt
mtr<-as.matrix(dt)
mtr
class(mtr)
l1<-list("Thistle","Vipers","Golden","Rain","Yell")
l1
rownames(mtr)<-l1
mtr
