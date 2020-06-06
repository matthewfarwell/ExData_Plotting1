hpc <- read.table("household_power_consumption.txt", header=TRUE, sep = ";", dec = ".")
hpcdates <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
hpcdates$Date_and_Time = strptime(paste(hpcdates$Date, " ", hpcdates$Time), "%d/%m/%Y %H:%M:%S")

png(file = "plot2.png", bg = "white", width = 480, height = 480)
plot(hpcdates$Date_and_Time, hpcdates$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
