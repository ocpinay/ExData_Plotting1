# load the data for plotting
source("load_data.R")

# set up the PNG file
png(filename = "plot4.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

par(mfcol = c(2, 2))

# plot the top-left graph
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")

# plot the bottom-left graph
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
# remove the border of legend
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

# plot the top-right graph
plot(DateTime, Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")

# plot the bottom-right graph
plot(DateTime, Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(data)[4])

# close the png
dev.off()