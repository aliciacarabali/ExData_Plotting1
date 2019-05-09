#Author:Alicia Carabali
#Date:08/05/2019

fullname<-"./Datasets/PowerConsumption/household_power_consumption.txt"
data<-read.table(fullname,header = TRUE,sep = ";")
data1<-subset(data,dmy(data$Date)=="2007-02-02"|dmy(data$Date)=="2007-02-01")
Numb<-seq(from=1,to=2880 )
png(filename = "Plot2.png", width =  480 , height = 480)
plot(y = as.numeric(data1$Global_active_power)/500,x=Numb,type = "l",ylab = "Global active power (kilowatts)",xlab="",xaxt="n",) 
axis(side = 1,tick = TRUE ,at = c(0,1440,2880),labels = c("Thurs","Fri","Sat"))
dev.off()
