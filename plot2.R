#make a plot showing most harmful events to people

plot2data <- data2 %>% mutate(year = year(BGN_DATE)) %>% 
        filter(year >= 1993) %>%
        select(year, EVTYPE, people_harmed, FATALITIES) 
plot2data <- plot2data %>% group_by(EVTYPE) %>% 
        summarize(harm = sum(people_harmed), fatal = sum(FATALITIES)) %>% 
        arrange(desc(harm))
plot2data <- plot2data[1:10, ]

xplot2 <- plot2data %>% pull(EVTYPE)
yplot2 <- plot2data %>% pull(harm)
yfatal <- plot2data %>% pull(fatal)
plot(1:10, yplot2, xaxt = "n")
axis(1, at = 1:10, labels = xplot2)
points(yfatal)
