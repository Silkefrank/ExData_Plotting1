col.names <- read.table("household_power_consumption.txt", sep = ";", nrows = 1, colClasses = "character")
household <- read.table("household_power_consumption.txt", header = FALSE, sep =";", skip = 66637, nrows = 2880, col.names = col.names[1,], colClasses = c("character", "character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?")
datetime <- strptime(paste(household$Date, household$Time), format = "%d/%m/%Y %H:%M:%S")
household <- cbind(household, datetime)
png("plot2.png")
plot(household$datetime, household$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
