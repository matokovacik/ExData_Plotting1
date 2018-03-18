drawGlobalActivePowerHist <- function(dataSet) {
  hist(
    dataSet$Global_active_power, 
    col="red", 
    main="Global Active Power", 
    xlab="Global Active Power (kilowatts)"
  )
}

drawGlobalActivePowerVsTime <- function(dataSet) {
  with(
    dataSet,
    plot( 
      datetime,
      Global_active_power,
      type="n",
      ylab = "Global Active Power (kilowatts)",
      xlab = ""
    )
  )

  lines(
      dataSet$datetime,
      dataSet$Global_active_power
  )
}

drawSubMeteringVsTime <- function(dataSet) {
  with(
    dataSet,
    plot( 
      datetime,
      Sub_metering_2, 
      type="n",
      ylab = "Energy sub metering",
      xlab = "",
      ylim = range(Sub_metering_1, Sub_metering_2, Sub_metering_3)
    )
  )
  
  
  lines(
    dataSet$datetime,
    dataSet$Sub_metering_1,
    col="black"
  )
  
  lines(
    dataSet$datetime,
    dataSet$Sub_metering_2,
    col="red"
  )
  
  lines(
    dataSet$datetime,
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

drawVoltageVsTime <- function(dataSet) {
  plot(
    dataSet$datetime,
    dataSet$Voltage
    )
}