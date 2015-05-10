# Exploratory Data Analysis

Repository for Exploratory Data Analysis course by John Hopkins University through Coursera.

##Course Project

###How to:

1. Find all project-related materials in the UCI HAR Dataset directory

2. Unzip the source (https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption#) into a folder on your local drive, mine is E:\r-workspace\data\

3. Copy all plot*.R into E:\r-workspace\

4. In RStudio, type (example): 

```
setwd("E:\\r-workspace\\")
source("plot1.R")

```

Run each file plot1.R, plot2.R, plot3.R, plot4.R respectively to generate related graph plot result.
The graph plot result will be saved into E:\r-workspace\ directory.

###Reading the data:

```
data <- read.table("household_power_consumption.txt") 
```

###Data dimension: 

The dataset has 2,075,259 rows and 9 columns. 

But we will only be using data from the dates 2007-02-01 and 2007-02-02. 

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

Date: Date in format dd/mm/yyyy
Time: time in format hh:mm:ss
Global_active_power: household global minute-averaged active power (in kilowatt)
Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
Voltage: minute-averaged voltage (in volt)
Global_intensity: household global minute-averaged current intensity (in ampere)
Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

The repository contains the following files:

- 'README.md'

- 'Codebook.md'

- 'household_power_consumption.txt' : Data set files that contains average of each measured variables for household power consumption

- 'plot1.R'

- 'plot2.R'

- 'plot3.R'

- 'plot4.R'

