library(readr)
library(tidyverse)

c <- c(1,3,5,6,8,9)
y = c(23,27,33,45,56,67)
m = c("ham", "rice", "yam", "fufu", "ogali", "amala")

dat <- cbind(c, y, m) %>% as.data.frame()

write.csv(dat, "cleaned_data/trial_data.csv")

data <- read_csv("cleaned_data/trial_data.csv")

png("outputs/plot.png")
hist(data$y)
dev.off()

write_csv(data, "outputs/data.csv")