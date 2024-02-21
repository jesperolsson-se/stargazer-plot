#!/usr/bin/env Rscript
library(ggplot2)

data <- data.frame(
  Timestamp = as.Date(
    runif(100, 0, 30), # 100 stars in 30 days (randomly)
    origin = "2024-01-01 00:00:00"
  )
)

ggplot(data, aes(x = Timestamp)) +
  stat_bin(data = data, aes(y = cumsum(..count..)), geom = "step", binwidth = 1) +
  labs(
    x = "Time",
    y = "Stars",
  )
