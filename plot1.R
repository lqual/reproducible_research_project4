#make a plot showing observations by year

plot1data <- data2 %>% mutate(year = year(BGN_DATE), occurence = 1) %>% 
        select(year, occurence) %>% group_by(year) %>% 
        summarize(total = sum(occurence))
xplot1 <- plot1data %>% pull(year)
yplot1 <- plot1data %>% pull(total)
plot(xplot1, yplot1)
abline(v = 1993)




