# Uses the same data frame from plot1.R
library(data.table)
library(dplyr)


df$datetime <- as.data.table(strptime(paste(df$Date, df$Time),format="%Y-%m-%d %H:%M:%S"))
# plotting the lin graph

plot(df$Global_active_power~df$datetime, type="l", xlab="", ylab="Global Active Power (kilowatts)")
# Save them into "png" format file

dev.copy(png, file = "plot2.png")
dev.off()