
#rm(list = ls())
options(max.print=99)

library(dplyr)

if(!exists("HouseholdPowerConsumptionSmallDataset")){
    
    filepath <- "household_power_consumption.txt"
    
    HouseholdPowerConsumptionDataset <- read.csv2(filepath, na.strings = c('?') )

    HouseholdPowerConsumptionSmallDataset <- HouseholdPowerConsumptionDataset %>%
        filter(Date == '1/2/2007' | Date == '2/2/2007') %>%
        mutate(Datetime = paste(Date, Time)) %>%
        mutate(Datetime = as.POSIXct(strptime(Datetime, "%d/%m/%Y %H:%M:%S"))) %>%  
        select(Datetime, Global_active_power, Global_reactive_power, 
               Voltage, Global_intensity, Sub_metering_1, 
               Sub_metering_2, Sub_metering_3)
}

head(HouseholdPowerConsumptionSmallDataset)
dim(HouseholdPowerConsumptionSmallDataset)
