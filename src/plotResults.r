results <- read.table("results.txt")
names(results) <- c("size","threads","time","score1","score2")
d <- split(results,rep(1:5,each=30))

test_8 = as.data.frame(d[1])
test_10 = as.data.frame(d[2])
test_25 = as.data.frame(d[3])
test_50 = as.data.frame(d[4])
test_100 = as.data.frame(d[5])
rm(d)
colours <- c("red", "orange", "blue", "yellow", "green")

test_8 = aggregate(test_8[, 3], list(test_8$X1.threads), mean)
test_10 = aggregate(test_10[, 3], list(test_10$X2.threads), mean)
test_25 = aggregate(test_25[, 3], list(test_25$X3.threads), mean)
test_50 = aggregate(test_50[, 3], list(test_50$X4.threads), mean)
test_100 = aggregate(test_100[, 3], list(test_100$X5.threads), mean)

names(test_8) <- c("threads","time")
names(test_10) <- c("threads","time")
names(test_25) <- c("threads","time")
names(test_50) <- c("threads","time")
names(test_100) <- c("threads","time")


plot(test_8$threads, test_8$time, type="n", main="Board 8", xlab="Threads", ylab="Time (ms)")
lines(test_8$threads, test_8$time, col="red")

plot(test_10$threads, test_10$time, type="n", main="Board 10", xlab="Threads", ylab="Time (ms)")
lines(test_10$threads, test_10$time, col="red")

plot(test_25$threads, test_25$time, type="n", main="Board 25", xlab="Threads", ylab="Time (ms)")
lines(test_25$threads, test_25$time, col="red")

plot(test_50$threads, test_50$time, type="n", main="Board 50", xlab="Threads", ylab="Time (ms)")
lines(test_50$threads, test_50$time, col="red")

plot(test_100$threads, test_100$time, type="n", main="Board 100", xlab="Threads", ylab="Time (ms)")
lines(test_100$threads, test_100$time, col="red")