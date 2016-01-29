
source("getting_and_cleaning_dataset.R")

plot.new()

df <- HouseholdPowerConsumptionSmallDataset

plot(df$Datetime, df$Sub_metering_3, 
     type = "l", 
     col = "blue", 
     xlab = "", 
     ylab = "Energy sub metering",
     ylim=c(-0.5, 35) 
)

lines(df$Datetime, df$Sub_metering_1, type = "l", col = "black")

lines(df$Datetime, df$Sub_metering_2, type = "l", col = "red")

legend(
    "topright", 
    col=c("black", "red", "blue"), 
    lty = "solid",
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    cex=0.8,
    y.intersp = 1.5,
    text.width = 50000
)

dev.copy(png, file = "plot3.png")

dev.off()
