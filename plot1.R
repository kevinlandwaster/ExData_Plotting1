#
# This script does the histogram of Global Active Power.
#
# There are two functions:
#  doPlot1Png(data), which takes a dataframe read by read_data.R and creates a PNG of the data.
#  doPlot1(data), which takes a dataframe read by read_data.R and creates a graph of the data in R in the current active
#       graphics device.
#  doPlotHistogramGlobalActivePower: The histogram of Global Active Power for the data.
#

doPlot1Png <- function(data) {
  png('plot1.png', height=480, width=480)
  
  doPlot1(data)
  
  dev.off()
}

doPlot1 <- function(data) {
  doPlotHistogramGlobalActivePower(data)
}

doPlotHistogramGlobalActivePower <- function(data) {
  hist(data$Global_active_power, col='red', main="Global Active Power", xlab="Global Active Power (kilowatts)")
}
