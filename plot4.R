#### LOADING DATA ####
df <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df <- df[df$Date >= "2007-02-01" & df$Date <= "2007-02-02",]
df$DateAndTime <- strptime(paste(dateddata$Date, dateddata$Time, sep=" "),
                           "%d/%m/%Y %H:%M:%S") 

#### PLOT 4 ####
png(file="plot4.png",
    width=480, height=480)
par(mfrow=c(2,2))
plot(df$DateAndTime, df$Global_active_power, ylab="Global Active Power", type = "l",
     xlab="")

plot(df$DateAndTime, df$Voltage, ylab="Voltage", xlab="datetime", type = "l")

plot(df$DateAndTime, df$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering")
lines(df$DateAndTime, df$Sub_metering_2, col="red")
lines(df$DateAndTime, df$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = 1, col=c(1, "red", "blue"), bty="n")

plot(df$DateAndTime, df$Global_reactive_power, ylab="Global_reactive_power",
     xlab="datetime",type = "l")

dev.off()
