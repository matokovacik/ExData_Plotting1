fileName <- "household_power_consumption.txt"
chartFileName <- "plot3.png"

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
  strptime(paste(dataSet$Date,dataSet$Time), "%d/%m/%Y %H:%M:%S"),
  dataSet$Sub_metering_2, 
  type="n",
  ylab = "Energy sub metering",
  xlab = "",
  ylim = range(dataSet$Sub_metering_1, dataSet$Sub_metering_2, dataSet$Sub_metering_3)
)

lines(
  strptime(paste(dataSet$Date,dataSet$Time), "%d/%m/%Y %H:%M:%S"),
  dataSet$Sub_metering_1,
  col="black"
)

lines(
  strptime(paste(dataSet$Date,dataSet$Time), "%d/%m/%Y %H:%M:%S"),
  dataSet$Sub_metering_2,
  col="red"
)

lines(
  strptime(paste(dataSet$Date,dataSet$Time), "%d/%m/%Y %H:%M:%S"),
  dataSet$Sub_metering_3,
  col="blue"
)

legend(
  "topright", 
  legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
  col=c("black","red","blue"), 
  lty=1
)

# ---
png(filename = chartFileName, width=480, height=480)
plot( 
  strptime(paste(dataSet$Date,dataSet$Time), "%d/%m/%Y %H:%M:%S"),
  dataSet$Sub_metering_2, 
  type="n",
  ylab = "Energy sub metering",
  xlab = "",
  ylim = range(dataSet$Sub_metering_1, dataSet$Sub_metering_2, dataSet$Sub_metering_3)
)

lines(
  strptime(paste(dataSet$Date,dataSet$Time), "%d/%m/%Y %H:%M:%S"),
  dataSet$Sub_metering_1,
  col="black"
)

lines(
  strptime(paste(dataSet$Date,dataSet$Time), "%d/%m/%Y %H:%M:%S"),
  dataSet$Sub_metering_2,
  col="red"
)

lines(
  strptime(paste(dataSet$Date,dataSet$Time), "%d/%m/%Y %H:%M:%S"),
  dataSet$Sub_metering_3,
  col="blue"
)

legend(
  "topright", 
  legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
  col=c("black","red","blue"), 
  lty=1
)
dev.off()

