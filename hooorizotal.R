#This R script creates a horizontal bar chart that visualizes the net worth of the top ten billionaires in the world. The chart is saved as a PNG file for reporting or presentation purposes.

# Data
A <- c(211,180,114,107,106,104,94.2,93.5,83.3,80.7)
B <- c("Bernard Arnault","Elon Musk","Jeff Bezos","Larry Ellison","Warren Buffett", 
       "Bill Gates", "Michael Bloomberg","Carlos Slim Helu & family",
       "Mukesh Ambani","Steve Ballmer")

# Save plot as PNG
png("top_billionaires.png" width = 900,height = 600)

# Create barplot and store bar midpoints
bp <- barplot(A,names.arg = B, horiz = TRUE,xlab = "Net Worth (in billions)",
              col = "blue", main = "Top Ten Billionaires", las = 1, cex.names = 0.7)

# Add net worth values at end of bars
text(x = A + 5,y = bp,labels = A,cex = 0.8,col = "black")

# Finish saving
dev.off()
