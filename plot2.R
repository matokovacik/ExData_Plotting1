source("readPowerDataSet.R")
source("charts.R")

fileName <- "household_power_consumption.txt"
chartFileName <- "plot2.png"

dataSet <- readPowerDataSet(fileName)


# --- Print chart to plot window
drawGlobalActivePowerVsTime(dataSet)

# ---
png(filename = chartFileName, width=480, height=480)
drawGlobalActivePowerVsTime(dataSet)
dev.off()

