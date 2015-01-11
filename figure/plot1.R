plot1 <- read.csv("./data/household_final.csv")
png(file="plot2.png")
hist(plot1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
