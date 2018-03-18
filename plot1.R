source("readPowerDataSet.R")
source("charts.R")

fileName <- "household_power_consumption.txt"
chartFileName <- "plot1.png"

dataSet <- readPowerDataSet(fileName)

# --- Print chart to plot window
drawPlot1(dataSet)

# --- Reproduce the plot to PNG device
png(filename = chartFileName, width=480, height=480)
drawPlot1(dataSet)
dev.off()
