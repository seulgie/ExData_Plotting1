# Plot3

data<-read.table("household_power_consumption.txt",sep=";",stringsAsFactors=F,skip=66637,nrows=2880)

# create graph and save as a png file

datetime <- strptime(paste(data$V1, data$V2, sep=" "),"%d/%m/%Y %H:%M:%S")
GAP<-as.numeric(data$V3)
sub1<-as.numeric(data$V7)
sub2<-as.numeric(data$V8)
sub3<-as.numeric(data$V9)

png("plot3.png",width=480,height=480)
plot(datetime, sub1, type="n", xlab="", ylab="Energy Sub Metering")
points(datetime,sub1,col="black",type="l")
points(datetime,sub2,col="red",type="l")
points(datetime,sub3,col="blue",type="l")
legend("topright",lty=1,col=c("black","red","blue"),
       legend=c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))

dev.off()