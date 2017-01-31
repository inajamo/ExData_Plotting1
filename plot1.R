
# Read the file
library(data.table)
library(dplyr)

# Read Data table using "fread", which wil also show the time it takes to read the data frame

df <- fread("household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?", 
            colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric')) 

# Convert Date column into Type "Date" usin as.Date
df$Date <- as.Date(df$Date, "%d/%m/%Y")

# Subset/filter data set for the given date range

df <- subset(df,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

par(mar=c(4,2,2,2))
histplot <- hist(df$Global_active_power, xlab = "Global Active Power (kilowatts)", 
                 ylab = "Frequency",col = "red", main = "Global Active Power")

dev.copy(png, file = "plot1.png")
dev.off()