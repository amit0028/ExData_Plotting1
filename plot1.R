

################# Assignment PLot-1

# reading complete file
data <- read.table("D:/amit/coursera/exploratory_data_analysis/data/exdata-data-household_power_consumption/household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
head(data)

#### Subset data as per requirement of assignment
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
head(data)
str(subSetData)

##### Build Plot-1
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()