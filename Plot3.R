filename <- "./Data/household_power_consumption.txt"

ehc <- read.table(filename, sep = ";", dec = ".", header = TRUE, stringsAsFactors = FALSE)

sbset <- ehc[ehc$Date %in% c("1/2/2007", "2/2/2007"),]

#str(sbset)

datetime <- strptime(paste(sbset$Date, sbset$Time, sep=" "), format = "%d/%m/%Y %H:%M:%S")

SMetering1 <- as.numeric(sbset$Sub_metering_1)
SMetering2 <- as.numeric(sbset$Sub_metering_2)
SMetering3 <- as.numeric(sbset$Sub_metering_3)

png("Plot3.png", width = 480, height = 480)

plot(datetime, SMetering1, type = "l", xlab="", ylab = "Energy sub metering")
lines(datetime, SMetering2, col = "red")
lines(datetime, SMetering3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()
