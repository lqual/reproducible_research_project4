        #clean up EVTYPE variable practice
#data3 <- data2 %>% select(EVTYPE) %>% mutate(occurence = 1) %>% 
        #group_by(EVTYPE) %>% summarize(total = sum(occurence))
#event <- data3 %>% pull(EVTYPE)
#occurences <- data3 %>% pull(total)
#eventList <- data.frame("event" = event, "occurences" = occurences)
#eventList <- eventList[order(eventList$occurences, decreasing = TRUE), ]

        #subbing misspelled names and misclassifications for event types
        #ignored events which were combined since it's impossible to know how they
        #should have been classified.  Also didn't make any adjustments to events with
        #less than ten occurences because it wouldn't make a massive difference for the 
        #purposes of this assignment.  Kept in unclassified data for the same reason
#eventList$event <- gsub("TSTM", "THUNDERSTORM", eventList$event)
#eventList$event <- gsub("WINDS", "WIND", eventList$event)
#eventList$event <- gsub("URBAN/SML STREAM FLD", "FLOOD", eventList$event)
#eventList$event <- gsub("WILD/FOREST FIRE", "wILDFIRE", eventList$event)
#eventList$event <- gsub("URBAN FLOOD", "FLOOD", eventList$event)
#eventList$event <- gsub("WEATHER/MIX", "WEATHER", eventList$event)
#eventList$event <- gsub("RIVER FLOOD", "FLOOD", eventList$event)
#eventList$event <- gsub("EXTREME COLD", "EXTREME COLD/WIND CHILL", eventList$event)
#eventList$event <- gsub("FLOODING", "FLOOD", eventList$event)
#eventList$event <- gsub("HURRICANE/TYPHOON", "HURRICANE", eventList$event)
#eventList$event <- gsub("HURRICANE", "HURRICANE/TYPHOON", eventList$event)
#eventList$event <- gsub("THUNDERSTORM WINDS", "THUNDERSTORM WIND", eventList$event)
#eventList$event <- gsub("EXCESSIVE SNOW", "HEAVY SNOW", eventList$event)
#eventList$event <- gsub("EXTREME COLD/WIND CHILL/WIND CHILL", "EXTREME COLD/WIND CHILL", eventList$event)
#eventList$event <- gsub("HEAVY SURF", "HIGH SURF", eventList$event)
#eventList$event <- gsub("HEAVY SURF/HIGH SURF", "HIGH SURF", eventList$event)
#eventList$event <- gsub("COLD/WIND CHILL", "EXTREME COLD/WIND CHILL", eventList$event)
#eventList$event <- gsub("FROST/FREEZE", "FREEZE", eventList$event)
#eventList$event <- gsub("FREEZE", "FROST/FREEZE", eventList$event)
#eventList$event <- gsub("FLASH FLOODS", "FLASH FLOOD", eventList$event)
#eventList$event <- gsub("HEAT WAVE", "HEAT", eventList$event)
#eventList$event <- gsub("SMALL HAIL", "HAIL", eventList$event)
#eventList$event <- gsub("URBAN/SMALL STREAM FLOOD", "FLOOD", eventList$event)
#eventList$event <- gsub("\\(","", eventList$event)
#eventList$event <- gsub("\\)","", eventList$event)
#eventList$event <- gsub("THUNDERSTORM WIND G45", "THUNDERSTORM WIND", eventList$event)
#eventList$event <- gsub("THUNDERSTORM WIND G40", "THUNDERSTORM WIND", eventList$event)
#eventList$event <- gsub("THUNDERSTORMS WIND", "THUNDERSTORM WIND", eventList$event)

#eventList <- eventList %>% group_by(event) %>% summarize(total = sum(occurences))
#event <- eventList %>% pull(event)
#occurences <- eventList %>% pull(total)
#eventList <- data.frame("event" = event, "occurences" = occurences)
#eventList <- eventList[order(eventList$occurences, decreasing = TRUE), ]


##start here for cleaning EVTYPE
#clean the events for the actual dataset
data2$EVTYPE <- gsub("TSTM", "THUNDERSTORM", data2$EVTYPE)
data2$EVTYPE <- gsub("WINDS", "WIND", data2$EVTYPE)
data2$EVTYPE <- gsub("URBAN/SML STREAM FLD", "FLOOD", data2$EVTYPE)
data2$EVTYPE <- gsub("WILD/FOREST FIRE", "wILDFIRE", data2$EVTYPE)
data2$EVTYPE <- gsub("URBAN FLOOD", "FLOOD", data2$EVTYPE)
data2$EVTYPE <- gsub("WEATHER/MIX", "WEATHER", data2$EVTYPE)
data2$EVTYPE <- gsub("RIVER FLOOD", "FLOOD", data2$EVTYPE)
data2$EVTYPE <- gsub("EXTREME COLD", "EXTREME COLD/WIND CHILL", data2$EVTYPE)
data2$EVTYPE <- gsub("FLOODING", "FLOOD", data2$EVTYPE)
data2$EVTYPE <- gsub("HURRICANE/TYPHOON", "HURRICANE", data2$EVTYPE)
data2$EVTYPE <- gsub("HURRICANE", "HURRICANE/TYPHOON", data2$EVTYPE)
data2$EVTYPE <- gsub("THUNDERSTORM WINDS", "THUNDERSTORM WIND", data2$EVTYPE)
data2$EVTYPE <- gsub("EXCESSIVE SNOW", "HEAVY SNOW", data2$EVTYPE)
data2$EVTYPE <- gsub("EXTREME COLD/WIND CHILL/WIND CHILL", "EXTREME COLD/WIND CHILL", data2$EVTYPE)
data2$EVTYPE <- gsub("HEAVY SURF", "HIGH SURF", data2$EVTYPE)
data2$EVTYPE <- gsub("HEAVY SURF/HIGH SURF", "HIGH SURF", data2$EVTYPE)
data2$EVTYPE <- gsub("COLD/WIND CHILL", "EXTREME COLD/WIND CHILL", data2$EVTYPE)
data2$EVTYPE <- gsub("FROST/FREEZE", "FREEZE", data2$EVTYPE)
data2$EVTYPE <- gsub("FREEZE", "FROST/FREEZE", data2$EVTYPE)
data2$EVTYPE <- gsub("FLASH FLOODS", "FLASH FLOOD", data2$EVTYPE)
data2$EVTYPE <- gsub("HEAT WAVE", "HEAT", data2$EVTYPE)
data2$EVTYPE <- gsub("SMALL HAIL", "HAIL", data2$EVTYPE)
data2$EVTYPE <- gsub("URBAN/SMALL STREAM FLOOD", "FLOOD", data2$EVTYPE)
data2$EVTYPE <- gsub("\\(","", data2$EVTYPE)
data2$EVTYPE <- gsub("\\)","", data2$EVTYPE)
data2$EVTYPE <- gsub("THUNDERSTORM WIND G45", "THUNDERSTORM WIND", data2$EVTYPE)
data2$EVTYPE <- gsub("THUNDERSTORM WIND G40", "THUNDERSTORM WIND", data2$EVTYPE)
data2$EVTYPE <- gsub("THUNDERSTORMS WIND", "THUNDERSTORM WIND", data2$EVTYPE)

#make everything uppercase
data2$EVTYPE <- toupper(data2$EVTYPE)


