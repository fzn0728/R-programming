### Executing a file and Functions
# Executing the commands in a file
# http://stackoverflow.com/questions/31843662/what-is-the-difference-between-cat-and-print
source('simpleEx.R')
source('simpleEx.R',echo=TRUE) # logical; if TRUE, each expression is printed after parsing, before evaluation.
source('simpleEx.R',print.eval=TRUE)
source('simpleEx.R',verbose=TRUE) # This shows all process

# If statement
x = 1
if (x<0.2)
{
  x = x+1
  cat("increment that number!\n")
}else if(x<2.0)
{
  x <- 2.0*x
  cat("not big enough!\n")
}else
{
  x<x-1
  cat("nah, make it smaller.\n");
}

# for statements
for (lupe in seq(0,1,by=0.3))
{
  cat(lupe,"\n")
}

# While statements
lupe = 1
x = 1
while(x<4)
{
  x = rnorm(1,mean=2,sd=3)
  cat("trying this value:",x,"(",lupe," times in loop)\n");
  lupe = lupe+1
}

# repeat statements It will always begin the loop the first time. The while loop will only start the loop if the condition is true the first time it is evaluated.
repeat
{
  x <- rnorm(1)
  if(x < -2.0) break
}

# The next statement is used to skip the statements that follow and restart the current loop. If a for loop is used then the next statement will update the loop variable.
for(lupe in x)
{
  if (lupe > 2.0)
    next
  
  if( (lupe<0.6) && (lupe > 0.5))
    break
  
  cat("The value of lupe is ",lupe,"\n");
}

# Switch statement
y <- rnorm(5)
y
x <- "sd"
z <- switch(x,"mean"=mean(y),"median"=median(y),"variance"=var(y),"sd"=sd(y))
z

# Scan statement

# Function
c = c(1,2,3,4,5)
sample = function(a,b)
{
  value = switch(a,"median" = median(b),"mean" = mean(b),"variance" = var(b))
  largeVals = length(c[c>1])
  list(stat = value, number = largeVals)
}

result = sample("median",c)
