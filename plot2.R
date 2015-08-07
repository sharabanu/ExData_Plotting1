#library used
library(dplyr)

## Getting full dataset
power <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")

## Subsetting the data
power_feb <- filter(power,Date %in% c("1/2/2007","2/2/2007")) 

##Format Date and Time
power_feb$DateTime <- strptime(paste(power_feb$Date,power_feb$Time),"%d/%m/%Y %H:%M:%S")

## Plot 2 and save it to file
png("plot2.png",width=480,height=480)
plot(power_feb$DateTime, power_feb$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA)
dev.off()


