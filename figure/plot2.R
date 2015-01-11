plotData <- read.csv("./data/DataHousehold.csv")
temp<-transform(plotData, X=strptime(paste(as.character(plotData$Date),as.character(plotData$Time)), "%d/%m/%Y %H:%M:%S"))
png(file="plot2.png")
plot(temp$X, temp$Global_active_power, type="l", xlab="  ", ylab="Global Active Power (kilowatts)")
dev.off()

