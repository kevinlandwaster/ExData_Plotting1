#
# This file contains the code to read the data. It will properly subset the data to the range required for the
# assignment.
#
# It also adds a column called DateTime which contains a POSIXct object containing the date and time of the observation.
#
# The data frame is returned as a tibble.
#

library(readr)
library(dplyr)
library(lubridate)

readData <- function() {
  data <- tbl_df(read.csv('data/household_power_consumption.txt', sep=";", stringsAsFactors = FALSE))
  
  data <- data %>% 
    mutate(DateTime = as.POSIXct(strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"))) %>%
    filter(DateTime >= as.Date("2007-02-01") & DateTime < as.Date("2007-02-03") ) %>%
    mutate( Global_active_power = as.numeric(Global_active_power),
            Global_reactive_power = as.numeric(Global_reactive_power),
            Voltage = as.numeric(Voltage),
            Global_intensity = as.numeric(Global_intensity),
            Sub_metering_1 = as.numeric(Sub_metering_1),
            Sub_metering_2 = as.numeric(Sub_metering_2),
            Sub_metering_3 = as.numeric(Sub_metering_3))
                          
  data
}
