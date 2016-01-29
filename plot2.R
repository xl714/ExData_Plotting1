
source("getting_and_cleaning_dataset.R")

plot.new()

with(
    HouseholdPowerConsumptionSmallDataset,
    plot(Datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
)

dev.copy(png, file = "plot2.png")

dev.off()
