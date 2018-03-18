fileName <- "household_power_consumption.txt"
chartFileName <- "plot1.png"

dataSet <- read.csv2(fileName, 
          na.strings="?", 
          dec=".",
          col.names = c(
            "Date", 
            "Time", 
            "Global_active_power", 
            "Global_reactive_power", 
            "Voltage",
            "Global_intensity",
            "Sub_metering_1",
            "Sub_metering_2",
            "Sub_metering_3"
          ),
          colClasses = c(
            "character", 
            "character", 
            "numeric",
            "numeric",
            "numeric",
            "numeric",
            "numeric",
            "numeric",
            "numeric"
          )
        )

dataSet <- subset(dataSet, 
                  as.Date(dataSet[,1],"%d/%m/%Y") %in% c(as.Date("2007-02-01"),as.Date("2007-02-02")))

#Print chart to plot window
hist(dataSet$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

#Reproduce the plot to PNG device
png(filename = chartFileName, width=480, height=480)
hist(dataSet$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()