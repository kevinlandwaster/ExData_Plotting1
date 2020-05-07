# Creating the graphs

If you want to create all the graphs, make sure you unzip the data file in the `data` directory.

You will then need to run the following commands:

```
source('read_data.R')
source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R')
```

To read the data:

```
data <- readData()
```

You can then create the PNGs:

```
doPlot1Png(data)
doPlot2Png(data)
doPlot3Png(data)
doPlot4Png(data)
```

