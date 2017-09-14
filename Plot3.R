## Open device png
png('Exploratory/plot3.png', width = 480, height = 480, units = 'px')

## Make the plot
with(sub_power_consum, {
  plot(Sub_metering_1~DateTime, type="l",
       ylab="Energy Sub Metering", xlab="")
  lines(Sub_metering_2~DateTime,col='Red')
  lines(Sub_metering_3~DateTime,col='Blue')
})

## Add the legends
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Close device png
dev.off()