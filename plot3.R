source("readPowerDataSet.R")
source("charts.R")

fileName <- "household_power_consumption.txt"
chartFileName <- "plot3.png"

dataSet <- readPowerDataSet(fileName)

# --- Print chart to plot window
drawPlot3(dataSet)

# ---
png(filename = chartFileName, width=480, height=480)
drawPlot3(dataSet)
dev.off()

