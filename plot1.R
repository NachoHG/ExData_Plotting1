#### LOADING DATA ####
df <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df <- df[df$Date >= "2007-02-01" & df$Date <= "2007-02-02",]

#### PLOT 1 ####
png(file="plot1.png",
    width=480, height=480)
hist(df$Global_active_power, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()
