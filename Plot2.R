## Merge both columns, Date and Time
sub_power_consum$DateTime <- paste(sub_power_consum$Date, sub_power_consum$Time)

## Format of the colum
sub_power_consum$DateTime <- strptime(sub_power_consum$DateTime, "%Y-%m-%d %H:%M:%S")
sub_power_consum$DateTime <- as.POSIXct(sub_power_consum$DateTime)

## Open device png
png('Exploratory/plot2.png', width = 480, height = 480, units = 'px')

## Make the plot
plot(sub_power_consum$Global_active_power ~ sub_power_consum$DateTime, type = 'l', ylab = "Global Active Power (kilowatts)", xlab = '')

## Close device png
dev.off()