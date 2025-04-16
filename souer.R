#Is there a significant drop-off in net worth among the lower-ranked industries?

# Data
A <- c(211,180,114,107,106,104,94,93,83,80)  # Net worth
B <- c("LVMH","Tesla","SpaceX","Amazon","Oracle","Berkshire Hathaway",
       "Microsoft","Bloomberg LP","Telecom","Diversified")

png(file = "top_industry_net_worth.png",width = 1000,height = 600)

# Create barplot
bp <- barplot(A,names.arg = B,
              xlab = "Source names",ylab = "Net worth (in billions)",
            col = "yellow",main = "Top Industry Net Worth", las = 2)

# Add data labels on top of each bar
text(x = bp, y = A,labels = A,pos = 3,cex = 0.8,col = "blue")
dev.off()
