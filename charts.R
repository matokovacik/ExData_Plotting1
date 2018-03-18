drawPlot1 <- function(dataSet) {
  hist(dataSet$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
}

drawPlot2 <- function(dataSet) {
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
}

drawPlot3 <- function(dataSet) {
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
}