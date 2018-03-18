readPowerDataSet <- function(fileName) {
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
                    as.Date(dataSet$Date,"%d/%m/%Y") %in% c(as.Date("2007-02-01"),as.Date("2007-02-02"))
                  )
  dataSet$datetime <- strptime(paste(dataSet$Date,dataSet$Time), "%d/%m/%Y %H:%M:%S")
  
  dataSet
}