## Please ensure you have set the working directory as the directory where you 
## want to save the data and plots.

## If you haven't already downloaded and extracted the zip file:
## fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
## download.file(fileUrl, destfile = "./power.zip")
## Extract the contents of the zip file to your working directory.

colnames <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
dat <- read.table("./household_power_consumption.txt", sep=";", col.names = colnames, na.strings = "?", nrows = 2880, skip = 66637)
dat$Date <- as.Date(dat$Date, "%d/%m/%Y")
dat$Date <- paste(dat$Date,dat$Time)
dat$Date <- as.POSIXlt(dat$Date)
png(file = "plot3.png", width = 480, height = 480, units = "px")
plot(dat$Date, dat$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(dat$Date, dat$Sub_metering_2, type = "l", col = 2)
points(dat$Date, dat$Sub_metering_3, type = "l", col = 4)
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c(1, 2, 4), lty = c(1, 1, 1))
dev.off()