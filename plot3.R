#make a plot showing most harmful events for economy (billion dollars)

plot3data <- data2 %>% mutate(year = year(BGN_DATE)) %>% 
        filter(year >= 1993) %>%
        select(year, EVTYPE, damage, property)
plot3data <- plot3data %>% group_by(EVTYPE) %>% 
        summarize(damage = sum(damage)/1000000000, 
                  property = sum(property)/1000000000) %>% 
        arrange(desc(damage))
plot3data <- plot3data[1:10, ]

xplot3 <- plot3data %>% pull(EVTYPE)
yplot3 <- plot3data %>% pull(damage)
yproperty <- plot3data %>% pull(property)
plot(1:10, yplot3, xaxt = "n")
axis(1, at = 1:10, labels = xplot3)
points(yproperty)
