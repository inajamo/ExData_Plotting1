# plotting the graph using the same dataframe used in plot2.R

par(mar=c(1,4,2,2))

with(df, {
  plot(Sub_metering_1 ~ datetime, type="l",
       xlab="", ylab="Energy sub metering")
      lines(Sub_metering_2~datetime,col='Red')
      lines(Sub_metering_3~datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.4)

dev.copy(png, file = "plot_3.png")
dev.off()