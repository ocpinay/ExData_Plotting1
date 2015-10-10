# load the data for plotting
source("load_data.R")

# set up the PNG file
png(filename = "plot3.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

# plotting DateTime vs Sub_metering_1
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")

# plotting DateTime vs Sub_metering_2
lines(DateTime, Sub_metering_2, col = "red")

# plotting DateTime vs Sub_metering_3
lines(DateTime, Sub_metering_3, col = "blue")

# adding the legend
legend("topright", 
        col = c("black", "red", "blue"),
        c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
        lwd = 1)

# close the png
dev.off()