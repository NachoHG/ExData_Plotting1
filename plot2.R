#### LOADING DATA ####
df <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df <- df[df$Date >= "2007-02-01" & df$Date <= "2007-02-02",]
df$DateAndTime <- strptime(paste(dateddata$Date, dateddata$Time, sep=" "),
                           "%d/%m/%Y %H:%M:%S") 

#### PLOT 2 ####
png(file="plot2.png",
    width=480, height=480)
plot(df$DateAndTime, df$Global_active_power, ylab="Global Active Power (kilowatts)", type = "l",
     xlab="")
dev.off()
