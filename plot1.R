
source("getting_and_cleaning_dataset.R")

plot.new()

with(
    HouseholdPowerConsumptionSmallDataset,
    hist(as.numeric(Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
)

dev.copy(png, file = "plot1.png")

dev.off()
