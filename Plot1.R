data_Initial <- read.table("household_power_consumption.txt", skip = 1, sep = ";")
names(data_Initial) <- c("Date", "Time", "Global_active_power", "Voltage", "Global_intensity", "Sub_metreing_1", "Sub_metering_2", "Sub_metering_3")
dataNew <- subset(data_Initial, data_Initial$Date == "1/2/2007"|data_Initial$Date == "2/2/2007")


globalActivePower <- as.numeric(dataNew$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "GLobal Active Power (kilowatts)")
dev.off()
 