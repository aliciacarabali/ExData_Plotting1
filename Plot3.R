#Author:Alicia Carabali
#Date:08/05/2019

fullname<-"./Datasets/PowerConsumption/household_power_consumption.txt"
data<-read.table(fullname,header = TRUE,sep = ";")
data1<-subset(data,dmy(data$Date)=="2007-02-02"|dmy(data$Date)=="2007-02-01")
Numb<-seq(from=1,to=2880 )
png(filename = "Plot3.png", width =  480 , height = 480)
plot(y = as.numeric(data1$Sub_metering_1),x=Numb,type = "l",ylab = "Energy sub metering",xlab="",xaxt="n",) 
lines(y = as.numeric(data1$Sub_metering_2),x=Numb,type = "l",col="red") 
lines(y = as.numeric(data1$Sub_metering_3),x=Numb,type = "l",col="blue") 
axis(side = 1,tick = TRUE ,at = c(0,1440,2880),labels = c("Thurs","Fri","Sat"))
legend("topright",lty = 1,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"))
dev.off()
