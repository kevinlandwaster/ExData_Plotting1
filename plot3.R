#
# This script does the line plots of energy sub metering over the dataset.
#
# There are three functions:
#  doPlot3Png(data), which takes a dataframe read by read_data.R and creates a PNG of the data.
#  doPlot3(data), which takes a dataframe read by read_data.R and creates a graph of the data in R in the current active
# graphics device.
#  doPlotSubmetering(data): Do all submetering vs datetime for the data set.
#

doPlot3Png <- function(data) {
  png('plot3.png', height=480, width=480)
  
  doPlot3(data)
  
  dev.off()
}

doPlot3 <- function(data) {
  doPlotSubmetering(data)
}

doPlotSubmetering <- function(data) {
  plot(data$DateTime, data$Sub_metering_1, type="n", lty=1, ylab="Energy sub metering", xlab="")
  lines(data$DateTime, data$Sub_metering_1, type="l", lty=1, col='black', ylab="Energy sub metering")
  lines(data$DateTime, data$Sub_metering_2, type="l", lty=1, col='red')
  lines(data$DateTime, data$Sub_metering_3, type="l", lty=1, col='blue')
  legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty=c(1,1,1))
}

