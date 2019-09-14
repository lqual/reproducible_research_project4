#download the datafile
if(!file.exists("stormData.csv.bz2")) {
        url <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
        download.file(url, "stormData.csv.bz2")
}
#read the datafile and remove unneeded columns
library(data.table)
library(R.utils)
data <- fread("stormData.csv.bz2")
library(dplyr)
data2 <- data %>% select(BGN_DATE, EVTYPE, FATALITIES, INJURIES, PROPDMG, 
                         PROPDMGEXP, CROPDMG, CROPDMGEXP)

#convert BGN_DATE to date
library(lubridate)
data2$BGN_DATE <- ymd(mdy_hms(data2$BGN_DATE))

#for EVTYPE, will only filter out summary values
#for the purposes of the assignment, we will use the National Weather Service's 
#classifications as correct instead of regrouping event types together
#also will not attempt to correct typos for EVTYPE, since our analysis will
#be using averages for impact damage and reclassifying the data incorrectly
#could cause more harm then good
data2 <- data2 %>% filter(!grepl("^[Ss][Uu][Mm]", EVTYPE))

#
