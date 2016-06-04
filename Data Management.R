### Data Management

# Appending Data
a = data.frame(one=c(0,1,2),two=c("a","a","b"))
b = data.frame(one=c(10,11,12),two=c("c","c","d"))
# Use rbind
v = rbind(a,b)
w <- cbind(a,b)
# The same commands also work with vectors and matrices and behave in a similar manner.
A = matrix(c( 1, 2, 3, 4, 5, 6),ncol=3,byrow=TRUE)
B = matrix(c(10,20,30,40,50,60),ncol=3,byrow=TRUE)
V <- rbind(A,B)
W <- cbind(A,B)

# Applying Functions Across Data Elements
x = list(a=rnorm(200,mean=1,sd=10),b=rexp(300,10.0),c=as.factor(c("a","b","b","b","c","c"))) # This is a big list which is the combination of three small lists
x
lapply(x,summary)

# sapply is similar, it tries to turn the result into a vector or matrix if possible
x <- list(a=rnorm(8,mean=1,sd=10),b=rexp(10,10.0))
val <- lapply(x,mean)
typeof(val)
val
val$a
val$b

other <- sapply(x,mean)
typeof(other)
other
other[1]
other[2]
