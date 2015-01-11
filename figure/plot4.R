plotData <- read.csv("./data/DataHousehold.csv")
temp<-transform(plotData, X=strptime(paste(as.character(plotData$Date),as.character(plotData$Time)), "%d/%m/%Y %H:%M:%S"))

png(file="plot4.png")

par(mfrow = c(2,2), mar = c(5, 5, 3, 1), oma = c(0, 0, 2, 0))

with(temp, {
plot(X, Global_active_power, type="l", xlab="  ", ylab="Global Active Power")
	
plot(X,Voltage, type="l",xlab="datetime", ylab="Voltage" )
	
plot(X,Sub_metering_1, type="l", xlab=" ", ylab="Energy sub metering")
points (X,Sub_metering_2, type="l", col="red")
points (X,Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", lty=1, col=c("black","red","blue"), 			legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
	
plot(temp$X,temp$Global_reactive_power, type="l",xlab="datetime", ylab="Global_reactive_power" )
	} )
	
dev.off()	