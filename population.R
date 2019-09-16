        #filter out years with few occurences
#hist(data2$BGN_DATE, breaks = 25)
#explore <- data2 %>% filter(year(BGN_DATE) >= 1993) %>% pull(BGN_DATE)
#hist(explore, breaks = 10)

#based on exploratory analysis will only use data starting in 1993
plotdata <- data2 %>% filter(year(BGN_DATE) >= 1993)


