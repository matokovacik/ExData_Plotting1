fileName <- "household_power_consumption.txt"
chartFileName <- "plot2.png"

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


# --- Print chart to plot window
plot( 
  strptime(paste(dataSet[,1],dataSet[,2]), "%d/%m/%Y %H:%M:%S"),
  dataSet$Global_active_power,
  type="n",
  ylab = "Global Active Power (kilowatts)",
  xlab = ""
)

lines(
  strptime(paste(dataSet[,1],dataSet[,2]), "%d/%m/%Y %H:%M:%S"),
  dataSet$Global_active_power
)

# ---
png(filename = chartFileName, width=480, height=480)
plot( 
  strptime(paste(dataSet[,1],dataSet[,2]), "%d/%m/%Y %H:%M:%S"),
  dataSet$Global_active_power,
  type="n",
  ylab = "Global Active Power (kilowatts)",
  xlab = ""
)

lines(
  strptime(paste(dataSet[,1],dataSet[,2]), "%d/%m/%Y %H:%M:%S"),
  dataSet$Global_active_power
)
dev.off()

