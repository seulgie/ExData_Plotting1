# Plot1

data<-read.table("household_power_consumption.txt",sep=";",stringsAsFactors=F,skip=66637,nrows=2880)

# create histogram and save as a png file
png("plot1.png",width=480,height=480)
hist(data$V3, main="Global Active Power", col="red",
     xlab = "Global Active Power (killowatts)", ylab = "Frequency")
dev.off()