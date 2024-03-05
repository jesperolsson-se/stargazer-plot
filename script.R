#!/usr/bin/env Rscript
library(ggplot2)

data = read.csv(file = "data.csv", header = TRUE);
data$Timestamp <- as.Date(data$Timestamp)

pdf("/output/stargazers.pdf")

ggplot(data, aes(x = Timestamp)) +
  stat_bin(data = data, aes(y = cumsum(..count..)), geom = "step", binwidth = 1) +
  labs(
    x = "Time",
    y = "Stars",
    caption = "(GitHub)"
  ) +
  theme_minimal() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())

dev.off()
