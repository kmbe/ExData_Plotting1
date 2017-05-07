filename <- "./Data/household_power_consumption.txt"

ehc <- read.table(filename, sep = ";", dec = ".", header = TRUE, stringsAsFactors = FALSE)

sbset <- ehc[ehc$Date %in% c("1/2/2007", "2/2/2007"),]

#str(sbset)

GlobalActivePower <- as.numeric(sbset$Global_active_power)

png("Plot1.png", width = 480, height = 480)

hist( GlobalActivePower, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")

dev.off()
