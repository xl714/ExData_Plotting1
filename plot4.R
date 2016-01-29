
source("getting_and_cleaning_dataset.R")

df <- HouseholdPowerConsumptionSmallDataset

plot.new()

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 0, 0), cex.axis = 0.8)

plot(df$Datetime, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

plot(df$Datetime, df$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(df$Datetime, df$Sub_metering_3, type = "l", col = "blue", ylim=c(-0.5, 35), xlab = "", ylab = "Energy sub metering")
lines(df$Datetime, df$Sub_metering_1, type = "l", col = "black")
lines(df$Datetime, df$Sub_metering_2, type = "l", col = "red")
legend(
    "topright", 
    col=c("black", "red", "blue"), 
    lty = "solid",
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    cex=0.7, 
    y.intersp = 1.5,
    text.width = 105000,
    bty = "n"
    #box.lwd = 0, box.col = "white", bg = "white", inset = 0.01
)

plot(df$Datetime, df$Global_reactive_power, type = "l", xlab = "datetime",ylab = "Global_reactive_power")

dev.copy(png, file = "plot4.png")
dev.off()
