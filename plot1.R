source("readPowerDataSet.R")
source("charts.R")

fileName <- "household_power_consumption.txt"
chartFileName <- "plot1.png"

dataSet <- readPowerDataSet(fileName)

# --- Print chart to plot window
drawGlobalActivePowerHist(dataSet)

# --- Reproduce the plot to PNG device
png(filename = chartFileName, width=480, height=480)
drawGlobalActivePowerHist(dataSet)
dev.off()
