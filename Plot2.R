filename <- "./Data/household_power_consumption.txt"

ehc <- read.table(filename, sep = ";", dec = ".", header = TRUE, stringsAsFactors = FALSE)

sbset <- ehc[ehc$Date %in% c("1/2/2007", "2/2/2007"),]

#str(sbset)

Datetime <- strptime(paste(sbset$Date, sbset$Time, sep=" "), format = "%d/%m/%Y %H:%M:%S")

GlobalActivePower <- as.numeric(sbset$Global_active_power)

png("Plot2.png", width = 480, height = 480)

plot( Datetime,GlobalActivePower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()
