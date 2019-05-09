#Author:Alicia Carabali
#Date:08/05/2019

library(lubridate)

fullname<-"./Datasets/PowerConsumption/household_power_consumption.txt"
data<-read.table(fullname,header = TRUE,sep = ";")
data1<-subset(data,dmy(data$Date)=="2007-02-02"|dmy(data$Date)=="2007-02-01")
png(filename = "Plot1.png", width =  480 , height = 480)
hist(as.numeric(data1$Global_active_power)/500,col = "red",xlab = "Global active power (kilowatts)",ylab = "Frequency", main = "Global Active Power",breaks = 13) 
dev.off()
