source("readPowerDataSet.R")
source("charts.R")

fileName <- "household_power_consumption.txt"
chartFileName <- "plot3.png"

dataSet <- readPowerDataSet(fileName)

.pardefault <- par(no.readonly = T)

# --- Print chart to plot window
drawSubMeteringVsTime(dataSet)

# ---
png(filename = chartFileName, width=480, height=480)
drawSubMeteringVsTime(dataSet)
dev.off()
par(.pardefault)
