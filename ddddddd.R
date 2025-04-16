#This R script uses the plotrix package to create a 3D pie chart that represents the distribution of net worth among the top three countries associated with the wealthiest individuals.

install.packages("plotrix")  # Run this only once
library(plotrix)

# Data
A <- c(211, 180, 114)
labels <- c("France", "US", "Mexico")

pct <- round(A / sum(A) * 100)
labels_with_pct <- paste(labels, pct, "%")
png("3D.png")

# 3D Pie Chart
pie3D(A, labels = labels_with_pct, explode = 0.1, main = "Top Three Countries")
dev.off()i