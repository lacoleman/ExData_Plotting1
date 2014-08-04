## Please ensure you have set the working directory as the directory where you 
## want to save the data and plots.

## If you haven't already downloaded and extracted the zip file:
## fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
## download.file(fileUrl, destfile = "./power.zip")
## Extract the contents of the zip file to your working directory.

colnames <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
dat <- read.table("./household_power_consumption.txt", sep=";", col.names = colnames, na.strings = "?", nrows = 2880, skip = 66637)
png(file = "plot1.png", width = 480, height = 480, units = "px")
hist(dat$Global_active_power, col = 2, main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()