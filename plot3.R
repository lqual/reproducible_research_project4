#make a plot showing most harmful events for economy (billion dollars)

plot3data <- data2 %>% mutate(year = year(BGN_DATE)) %>% 
        filter(year >= 1994) %>%
        select(year, EVTYPE, damage)
plot3data <- plot3data %>% group_by(EVTYPE) %>% 
        summarize(damage = sum(damage)/1000000000) %>% arrange(desc(damage))
plot3data <- plot3data[1:10, ]

xplot3 <- plot3data %>% pull(EVTYPE)
yplot3 <- plot3data %>% pull(damage)
barplot(yplot3, names.arg = xplot3, ylim = c(0, 150), 
        ylab = "Damage (billion dollars)", yaxt = "n",
        main = "Total Property and Crop Damage from Weather Events (1994-2011)", 
        col = "green", xlab = "Weather Event")
axis(2, at = c(0, 25, 50, 75, 100, 125, 150))



