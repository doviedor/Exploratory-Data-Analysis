## Open device png
png('Exploratory/plot3.png', width = 480, height = 480, units = 'px')

## Divide the screen with 2 rows and 2 columns
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

## Make the plot
with(sub_power_consum, {
  plot(Global_active_power~DateTime, type="l", ylab="Global Active Power", xlab="")
  plot(Voltage~DateTime, type="l", ylab="Voltage", xlab="Date Time")
  plot(Sub_metering_1~DateTime, type="l", ylab="Energy Sub Metering", xlab="")
  lines(Sub_metering_2~DateTime,col='Red')
  lines(Sub_metering_3~DateTime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~DateTime, type="l", ylab="Global_rective_power",xlab="Date Time")
})

## Close device png
dev.off()