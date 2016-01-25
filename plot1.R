# Download and unzip the data file, if you have not yet done so. This should create 
# a file called "household_power_consumption.txt" in your working directory.
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, "temp.zip")
unzip("temp.zip")

# Read the data into a data.frame and define the class of each variable.
# This might take a while because the file is big.
energy <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", 
                     na.strings = "?", stringsAsFactors = FALSE)

# Keep only the data for February 1 and 2, 2007.
ener <- subset(energy, Date == "1/2/2007" | Date == "2/2/2007")
rm(energy)

# Now concatenate the Date and Time variables into a new datetime variable.
ener$datetime <- paste(ener$Date, ener$Time)
ener$datetime <- strptime(ener$datetime, "%d/%m/%Y %H:%M:%S")

# Set graphic device to PNG and draw a histogram of the values of "Global Active Power".
# Save the result as a 480 x 480 pixel PNG file called plot1.png.
png("plot1.png")
hist(ener$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
