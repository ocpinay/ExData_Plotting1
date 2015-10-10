# load the data for plotting
source("load_data.R")

# set up the PNG file
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

# make the histogram
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))

# close the png
dev.off()