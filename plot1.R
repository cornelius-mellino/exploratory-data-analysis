## Read the data from file into a table
data <- read.table("data\\household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", check.names = FALSE, stringsAsFactors = FALSE, comment.char="", quote='\"')

## Convert the date into Date class
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

## Subsets the data according to the date range
subsetData <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

## Remove the rawData to free up some memory spaces
rm(data)

## Draw the histogram
graph <- hist(subsetData$Global_active_power, plot=FALSE)

## Saving the plot
png(filename="plot1.png", width=480, height=480)
plot(graph, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")
dev.off()