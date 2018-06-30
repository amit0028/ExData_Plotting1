

################# Assignment PLot-2

# reading complete file
data <- read.table("D:/amit/coursera/exploratory_data_analysis/data/exdata-data-household_power_consumption/household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
head(data)

#### Subset data as per requirement of assignment
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
head(data)
str(subSetData)


datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()