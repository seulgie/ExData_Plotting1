# Plot2

data<-read.table("household_power_consumption.txt",sep=";",stringsAsFactors=F,skip=66637,nrows=2880)

# create graph and save as a png file

datetime <- strptime(paste(data$V1, data$V2, sep=" "),"%d/%m/%Y %H:%M:%S")
GAP<-as.numeric(data$V3)

png("plot2.png",width=480,height=480)
plot(datetime,GAP,type="l",xlab="", ylab = "Global Active Power(kilowatts)")
dev.off()