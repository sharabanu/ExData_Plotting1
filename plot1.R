#library used
library(dplyr)


## Getting full dataset
power <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")

## Subsetting the data
power_feb <- filter(power,Date %in% c("1/2/2007","2/2/2007")) 

## Plot 1 and save it to file
png("plot1.png",width=480,height=480)
hist(power_feb$Global_active_power,xlab="Global Active Power (kilowatts)", main="Global Active Power",c="red")
dev.off()
