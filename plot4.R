# Plot3

data<-read.table("household_power_consumption.txt",sep=";",stringsAsFactors=F,skip=66637,nrows=2880)

# create graph and save as a png file

datetime <- strptime(paste(data$V1, data$V2, sep=" "),"%d/%m/%Y %H:%M:%S")
GAP<-as.numeric(data$V3)
GRP<-as.numeric(data$V4)
voltage<-as.numeric(data$V5)
sub1<-as.numeric(data$V7)
sub2<-as.numeric(data$V8)
sub3<-as.numeric(data$V9)

png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))

plot(datetime, GAP, type="l", xlab="", ylab="Global Active Power(kilowatts)")

plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime,sub1,type="l",xlab="", ylab="Energy Submetering")
lines(datetime,sub2, type="l", col="red")
lines(datetime,sub3,type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),
       legend=c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))

plot(datetime, GRP, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()