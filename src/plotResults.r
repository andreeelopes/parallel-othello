results <- read.table("results.txt")
names(results) <- c("size","threads","time","score1","score2")
d <- split(results,rep(1:5,each=90))

test_10 = as.data.frame(d[1])
test_25 = as.data.frame(d[2])
test_50 = as.data.frame(d[3])
test_100 = as.data.frame(d[4])
test_150 = as.data.frame(d[5])
rm(d)
colours <- c("red", "orange", "blue", "yellow", "green")

test_10 = aggregate(test_10[, 3], list(test_10$X1.threads), mean)
test_25 = aggregate(test_25[, 3], list(test_25$X2.threads), mean)
test_50 = aggregate(test_50[, 3], list(test_50$X3.threads), mean)
test_100 = aggregate(test_100[, 3], list(test_100$X4.threads), mean)
test_150 = aggregate(test_150[, 3], list(test_150$X5.threads), mean)


names(test_10) <- c("threads","time")
names(test_25) <- c("threads","time")
names(test_50) <- c("threads","time")
names(test_100) <- c("threads","time")
names(test_150) <- c("threads","time")


##############SPEEDUP#############
speedup_10  <- test_10$time[1]  / test_10$time
speedup_25  <- test_25$time[1]  / test_25$time
speedup_50  <- test_50$time[1]  / test_50$time
speedup_100 <- test_100$time[1] / test_100$time
speedup_150 <- test_150$time[1] / test_150$time


speedup_range <- range(0, speedup_10, speedup_25, speedup_50, speedup_100, speedup_150)

x <- test_10$threads
plot(x, speedup_10,ylim=speedup_range, type="o", col="red", xlab="Workers", ylab="Speedup", axes=FALSE)
box()
axis(2)
axis(1, at=x)

lines(x, speedup_25, col="blue", type="o")

lines(x, speedup_50, col="green", type="o")

lines(x, speedup_100, col="brown", type="o")

lines(x, speedup_150, col="purple", type="o")

legend(1, speedup_range[2], c("10", "25", "50", "100", "150"), cex=1.2, 
   col=c("red","blue", "green", "brown", "purple"), lty=1, title="Board")


#################EFFICIENCY######################

efficiency_10  <- 100 * speedup_10  / x
efficiency_25  <- 100 * speedup_25  / x
efficiency_50  <- 100 * speedup_50  / x
efficiency_100 <- 100 * speedup_100 / x
efficiency_150 <- 100 * speedup_150 / x

efficiency_range <- range(0, efficiency_10, efficiency_25, efficiency_50, efficiency_100, efficiency_150)

plot(x, efficiency_10, ylim=efficiency_range, type="o", 
	col="red", xlab="Workers", ylab="Efficiency (%)", axes=FALSE)
box()
axis(2)
axis(1, at=x)

lines(x, efficiency_25, col="blue", type="o")

lines(x, efficiency_50, col="green", type="o")

lines(x, efficiency_100, col="brown", type="o")

lines(x, efficiency_150, col="purple", type="o")

legend(13, efficiency_range[2], c("10", "25", "50", "100", "150"), cex=1.2, 
   col=c("red","blue", "green", "brown", "purple"), lty=1, title="Board")

#################COST######################

cost_10  <- x  * test_10$time
cost_25  <- x  * test_25$time
cost_50  <- x  * test_50$time
cost_100 <- x  * test_100$time
cost_150 <- x  * test_150$time


##standardized
#cost_10  <- x  * ((test_10$time - mean(test_10$time)) /sd(test_10$time))
#cost_25  <- x  * ((test_25$time - mean(test_25$time)) /sd(test_25$time))
#cost_50  <- x  * ((test_50$time - mean(test_50$time)) /sd(test_50$time))
#cost_100 <- x  * ((test_100$time - mean(test_100$time)) /sd(test_100$time))
#cost_150 <- x  * ((test_150$time - mean(test_150$time)) /sd(test_150$time))

#normalized
cost_10 = (cost_10-min(cost_10))/(max(cost_10)-min(cost_10))
cost_25 = (cost_25-min(cost_25))/(max(cost_25)-min(cost_25))
cost_50 = (cost_50-min(cost_50))/(max(cost_50)-min(cost_50))
cost_100 = (cost_100-min(cost_100))/(max(cost_100)-min(cost_100))
cost_150 = (cost_150-min(cost_150))/(max(cost_150)-min(cost_150))

cost_range <- range(0, cost_10, cost_25, cost_50, cost_100, cost_150)

plot(x, cost_10, ylim=cost_range, type="o", 
	col="red", xlab="Workers", ylab="Cost", axes=FALSE)
box()
axis(2)
axis(1, at=x)

lines(x, cost_25, col="blue", type="o")

lines(x, cost_50, col="green", type="o")

lines(x, cost_100, col="brown", type="o")

lines(x, cost_150, col="purple", type="o")

legend(1, cost_range[2], c("10", "25", "50", "100", "150"), cex=1.2, 
   col=c("red","blue", "green", "brown", "purple"), lwd="2", title="Board")
