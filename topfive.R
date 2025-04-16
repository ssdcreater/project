#This R script is used to create a bar chart that visually represents the net worth of the top five billionaires using R's base plotting system.

# Data
A <- c(211,180,114,107,106)
B <- c("bernard","elon musk","jeff bezos","larry ellison","warren")

png("top_five_billionaires.png",width = 800,height = 600)

# Create barplot
bp <- barplot(A,names.arg = B,
              xlab = "Names", ylab = "Net Worth (in billions)",
              col = "steelblue",main = "Top Five Billionaires")

# Add data labels on top of each bar
text(x = bp,y = A,labels = A,pos = 3,cex = 0.8,col = "black")
dev.off()
