#
# This script does the line plot of Global Active Power over the dataset.
#
# There are three functions:
#  doPlot2Png(data), which takes a dataframe read by read_data.R and creates a PNG of the data.
#  doPlot2(data), which takes a dataframe read by read_data.R and creates a graph of the data in R in the current active
#         graphics device.
#  doPlotGlobalActivePowerLine(data): Do the line plot of the global active power by datetime
#

doPlot2Png <- function(data) {
  png('plot2.png', height=480, width=480)
  
  doPlot2(data)
  
  dev.off()
}

doPlot2 <- function(data) {
  doPlotGlobalActivePowerLine(data)
}

doPlotGlobalActivePowerLine <- function(data) {
  plot(data$DateTime, data$Global_active_power, type="l", lty=1, ylab="Global Active Power (kilowatts)", xlab="")
}
