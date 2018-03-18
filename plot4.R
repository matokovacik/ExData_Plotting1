source("readPowerDataSet.R")
source("charts.R")

fileName <- "household_power_consumption.txt"
chartFileName <- "plot4.png"

dataSet <- readPowerDataSet(fileName)

.pardefault <- par(no.readonly = T)
# --- Print chart to plot window
par(mfrow=c(2,2))
drawGlobalActivePowerVsTimeSmall(dataSet)
drawVoltageVsTime(dataSet)
drawSubMeteringVsTimeSmall(dataSet)
drawGlobalReactivePowerVsTime(dataSet)

# ---
png(filename = chartFileName, width=480, height=480)
par(mfrow=c(2,2))
drawGlobalActivePowerVsTimeSmall(dataSet)
drawVoltageVsTime(dataSet)
drawSubMeteringVsTimeSmall(dataSet)
drawGlobalReactivePowerVsTime(dataSet)
dev.off()
par(.pardefault)