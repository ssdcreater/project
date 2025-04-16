#Are most of the top billionaires from the same country, or are they distributed across different countries?
# Data
V <- c(211, 180, 114, 107, 106)
Y <- c("France", "US", "Mexico", "India", "Spain")

# Save plot as PNG
png("top_country_chart.png", width = 800, height = 600)

# Create line plot
plot(V, type = "o", col = "red", xaxt = "n",
     xlab = "Country", ylab = "Net Worth (in billions)",
     main = "Top Country Chart")

# Add custom x-axis with country names
axis(1, at = 1:length(Y), labels = Y)

# Add data labels on top of each point
text(x = 1:length(V), y = V, labels = V, pos = 3, cex = 0.8, col = "blue")

# Finish saving
dev.off()