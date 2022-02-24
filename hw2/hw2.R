library(pacman)

# for last problem on homework, looking at a binomial distribution
# ie. probability of success is the same each time and,
# each trial of the experiment is independent of the rest
# pmf
n <- 20
p <- .33

#x <- seq(0, 7, .1)
#fx = (x < 1) * 0 + (x >= 1 & x < 3) * .1 + (x >= 3 & x < 4) * .5 + (x >= 4 & x < 6) * .9 + (x >= 6) * 1
x <- 0:20
print(x)
print("6 successes:")
dbinom(6, size=n, prob=p)
sum(dbinom(0:6, size=n, prob=p))
pdf("dist.pdf", height=6, width=6)
plot(x, dbinom(x, size=n, prob=p), pch = 19)
dev.off()

#plot(x, fx, type='h')
#hist(x, fx,
    #pch = 19, # use solid circles
    #main="Probability Mass Function",
    #xlab="x",
    #ylab="pmf")
#dev.off()

#x <- 0:n
#plot(x, dbinom(x, size = n, prob = p), 
     #main = "Probability mass function for Bin(20, .33)")


## cdf
## probability of observing 9 or fewer successes
#pbinom(9, size = n, prob = p)
#plot(x, pbinom(x, size = n, prob = p),
     #type="s",
     #main = "Cumulative distribution function for Bin(20, .33)")
