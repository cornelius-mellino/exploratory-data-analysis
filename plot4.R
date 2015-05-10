## Read the data from file into a table
data <- read.table("data\\household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", check.names = FALSE, stringsAsFactors = FALSE, comment.char="", quote='\"')

## Convert the date into Date class
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

## Subsets the data according to the date range
subsetData <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

## Remove the rawData to free up some memory spaces
rm(data)

## Converts dates
dateTime <- paste(as.Date(subsetData$Date), subsetData$Time)
subsetData$Datetime <- as.POSIXct(dateTime)

## Draw the histogram and saving the plot

png(filename="plot4.png", width=480, height=480)

par(mfrow=c(2,2))

## 1st graph
plot(subsetData$Datetime, subsetData$Global_active_power, type="l", xlab="", ylab="Global Active Power")

## 2nd graph
plot(subsetData$Datetime, subsetData$Voltage, type="l", xlab="datetime", ylab="Voltage")

## 3rd graph
plot(subsetData$Datetime, subsetData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(subsetData$Datetime, subsetData$Sub_metering_2, type="l", xlab="", col="red")
lines(subsetData$Datetime, subsetData$Sub_metering_3, type="l", xlab="", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), text.width=strwidth("Sub_metering_1"), lty=1, xjust=1, yjust=1, title="")

## 4th graph
plot(subsetData$Datetime, subsetData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()