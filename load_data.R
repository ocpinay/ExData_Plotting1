# Read only the data from the 2 days our script requires into R
#   grep finds the first occurrence of "1/2/2007" 

dFeb1 <- grep("1/2/2007",readLines("./data/household_power_consumption.txt"))

#   skip until one row less than dFeb1
indx <- dFeb1[[1]] - 1

#   nrows value was from counting occurrence of both dates in notepad++
data <- read.table("./data/household_power_consumption.txt",
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?",
                   skip = indx,
                   nrows = 2880)

#   restore the colnames that got removed because of the skip
colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#   attach data to the R search path for easy access of column names
attach(data)

#   concatenate the Date and Time values in the data frame
x <- paste(Date, Time)

#   make a new column with the date and time class in R
data$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

# to attach the new column in the search path
attach(data)


