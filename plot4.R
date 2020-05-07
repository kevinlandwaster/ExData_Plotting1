#
# This script does the 4 plotsfor the assignment over the dataset.
#
# There are two functions:
#  doPlot4Png(data), which takes a dataframe read by read_data.R and creates a PNG of the data.
#  doPlot4(data), which takes a dataframe read by read_data.R and creates a graph of the data in R in the current active
# graphics device.
#

doPlot4Png <- function(data) {
  png('plot4.png', height=480, width=480)
  
  doPlot4(data)
  
  dev.off()
}

doPlot4 <- function(data) {
  oldpar = par(mfrow=c(2,2))
  
  doPlotGlobalActivePowerLine(data)
  doPlotVoltage(data)
  doPlotSubmetering(data)
  doPlotGlobalReactivePower(data)
  
  par(oldpar)
}

# Do subplot 2, which gives a line graph of voltage over the time span of the data.
doPlotVoltage <- function(data) {
  plot(data$DateTime, data$Voltage, type="l", lty=1, ylab="Voltage", xlab="datetime")
  
}

# Do subplot 2, which gives a line graph of global reactive power over the time span of the data.
doPlotGlobalReactivePower <- function(data) {
  plot(data$DateTime, data$Global_reactive_power, type="l", lty=1, ylab="Global_reactive_power", xlab="datetime")
}
