hpc <- read.table("household_power_consumption.txt", header=TRUE, sep = ";", dec = ".")
hpcdates <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
hpcdates$Date_and_Time = strptime(paste(hpcdates$Date, " ", hpcdates$Time), "%d/%m/%Y %H:%M:%S")

png(file = "plot3.png", bg = "white", width = 480, height = 480)
plot(hpcdates$Date_and_Time, hpcdates$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering", col = "grey25")
lines(hpcdates$Date_and_Time, hpcdates$Sub_metering_2, type = "l", col = "red")
lines(hpcdates$Date_and_Time, hpcdates$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("grey25", "red", "blue"))
dev.off()
