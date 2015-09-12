col.names <- read.table("household_power_consumption.txt", sep = ";", nrows = 1, colClasses = "character")
household <- read.table("household_power_consumption.txt", header = FALSE, sep =";", skip = 66637, nrows = 2880, col.names = col.names[1,], colClasses = c("character", "character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?")
png("plot1.png")
hist(household$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")#
dev.off()