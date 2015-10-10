# load the data for plotting
source("load_data.R")

# set up the PNG file
png(filename = "plot2.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

# plot the line graph
plot(DateTime,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

# close the png
dev.off()