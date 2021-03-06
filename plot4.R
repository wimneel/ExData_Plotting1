# Set the LC_Time parameter to the default for this session to 
# make sure the weekdays in the graph are shown in English.
Sys.setlocale("LC_TIME", "C")

# Download and unzip the data file, if you have not yet done so. This should create 
# a file called "household_power_consumption.txt" in your working directory.
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, "temp.zip")
unzip("temp.zip")

# Read the data into a data.frame.
# This might take a while because the file is big.
energy <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", 
                     na.strings = "?", stringsAsFactors = FALSE)

# Keep only the data for February 1 and 2, 2007.
ener <- subset(energy, Date == "1/2/2007" | Date == "2/2/2007")
rm(energy)

# Concatenate the Date and Time variables into a new variable called datetime.
ener$datetime <- paste(ener$Date, ener$Time)
ener$datetime <- strptime(ener$datetime, "%d/%m/%Y %H:%M:%S")

# Set graphics device to PNG and plot four graphs in a 2x2 layout. Save the result 
# as a 480 x 480 pixel (the default) PNG file called plot4.png.
png("plot4.png")
par(mfrow = c(2, 2))

# Top left - plot "Global Active Power" as a function of time
plot(ener$datetime, ener$Global_active_power, type = "l", xlab = "",
     ylab = "Global Active Power")

# Top right - plot "Voltage" as a function of time
plot(ener$datetime, ener$Voltage, type = "l", xlab = "datetime",
     ylab = "Voltage")

# Bottom left - plot the three Submetering variables as a function of time
plot(ener$datetime, ener$Sub_metering_1, type = "l", xlab = "",
     col = "black", ylab = "Energy sub metering")
lines(ener$datetime, ener$Sub_metering_2, col = "red")
lines(ener$datetime, ener$Sub_metering_3, col = "blue")
legend("topright", bty ="n",
       legend = names(ener[7:9]), cex = 0.9,
       col = c("black", "red", "blue"), lty = 1)

# Bottom right - plot "Global Rective Power" as a function of time
plot(ener$datetime, ener$Global_reactive_power, type = "l", xlab = "datetime",
     ylab = "Global_reactive_power")

# Reset de graphics device and the graphic parameters
dev.off()
par(mfrow = c(1, 1))
