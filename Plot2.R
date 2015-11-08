dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec=".")
subsetdata <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,]

datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%y %H:%M:%S")
globalActivePower <- as.numeric(subsetdata$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(datetime, globalActivePower, type = 1, xlab = "", ylab = "Global Active Power (killowatts)")
dev.off()


