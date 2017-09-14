## Read the table. In my case, the table is in the folder Exploratory
power_consum <- read.table('Exploratory/household_power_consumption.txt', sep = ';', header = TRUE, colClasses = c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric'), na.strings = '?')

## View the table, just in case...
View(power_consum)

## Format of the Date column
power_consum$Date <- as.Date(power_consum$Date, '%d/%m/%Y')

## Use another table with the subset that I need
sub_power_consum <- subset(power_consum, Date >= '2007-2-1' & Date <= '2007-2-2')