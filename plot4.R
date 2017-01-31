# using the same dataframe that was read in plot1.R

par(mar=c(4,4,3,2))
par(mfrow = c(2,2))

plot(df$Global_active_power~df$datetime, type="l", xlab="", ylab="Global Active Power")

plot(df$Voltage~df$datetime, type="l", xlab="datetime", ylab="Voltage")

with(df, {
  plot(Sub_metering_1 ~ datetime, type="l",
       xlab="", ylab="Energy sub metering")
  lines(Sub_metering_2~datetime,col='Red')
  lines(Sub_metering_3~datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.2)

plot(df$Global_reactive_power~df$datetime, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.copy(png, file = "plot4.png")
dev.off()