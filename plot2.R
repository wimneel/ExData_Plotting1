# Set the LC_Time parameter to "English" for this session
Sys.setlocale("LC_TIME", "English")

# Download and unzip the data file, if you have not yet done so. This should create 
# a file called "household_power_consumption.txt" in your working directory.
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, "temp.zip")
unzip("temp.zip")

# Read the data into a data.frame and define the class of each variable
# This might take a while because the file is big
energy <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", 
                     na.strings = "?", 
                     colClasses = c("character", "character", rep("numeric", 7)))

# Keep only the data for February 1 and 2, 2007 
ener <- subset(energy, Date == "1/2/2007" | Date == "2/2/2007")
rm(energy)

# Now concatenate the Date and Time variables into a new datetime variable
ener$datetime <- paste(ener$Date, ener$Time)
ener$datetime <- strptime(ener$datetime, "%d/%m/%Y %H:%M:%S")

# Set graphic device to PNG and plot "Global Active Power" as a function of time.
# Save the result as a 480 x 480 pixel PNG file called plot2.png
png("plot2.png")
plot(ener$datetime, ener$Global_active_power, type = "l", xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()
