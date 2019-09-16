#make a plot showing most harmful events to people

plot2data <- data2 %>% mutate(year = year(BGN_DATE)) %>% 
        filter(year >= 1994) %>%
        select(year, EVTYPE, people_harmed) 
plot2data <- plot2data %>% group_by(EVTYPE) %>% 
        summarize(harm = sum(people_harmed)) %>% arrange(desc(harm))
plot2data <- plot2data[1:10, ]
xplot2 <- plot2data %>% pull(EVTYPE)
yplot2 <- plot2data %>% pull(harm)
barplot(yplot2, names.arg = xplot2, ylim = c(0, 25000), ylab = "People", 
        main = "Total Injuries and Fatalities from Weather Events (1994-2011)", 
        col = "red", xlab = "Weather Event")







