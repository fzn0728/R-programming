### Time Data Types
help(DateTimeClasses)
# There are two basic classes of date/times. Class "POSIXct" represents the (signed) number of seconds since the beginning of 1970 (in the UTC time zone) as a numeric vector. Class "POSIXlt" is a named list of vectors representing
t = Sys.time()
print(t)
typeof(t)
cat(t,"\n")
c = as.POSIXct(t)
print(c)
typeof(c)
l = as.POSIXlt(t)
print(l)
cat(l,"\n") # list cannot handled by cat()
names(l)

# strftime convert time data type to a string
help(strftime)
t = Sys.time()
cat(t,"\n")
timeStamp = strftime(t,"%Y-%m-%d %H:%M:%S")
timeStamp
typeof(timeStamp)

# strptime coverts string to data type
myData <- data.frame(time=c("2014-01-23 14:28:21","2014-01-23 14:28:55","2014-01-23 14:29:02","2014-01-23 14:31:18"),speed=c(2.0,2.2,3.4,5.5))
myData
myData$time[1]
typeof(myData$time[1])

myData$time <- strptime(myData$time,"%Y-%m-%d %H:%M:%S")
myData
myData$time[1]
typeof(myData$time[1])
myData$time[1][[2]]

# If we only keep track of days, rather than second, then using as.Date()
theDates = c("1 jan 2012","1 jan 2013","1 jan 2014")
dateFields = as.Date(theDates,"%d %b %Y")
typeof(dateFields)
dateFields
N = length(dateFields)
diff = dateFields[1:(N-1)] - dateFields[2:N]
diff

# Use origin option
infamy <- as.Date(-179,origin="1942-06-04")
infamy
today =Sys.Date()
today
today - infamy

# Use format command to make sure the ouput has right format
theTime = Sys.time()
theTime
a = rexp(1,0.1)
a
cat("At about",format(theTime,"%H:%M"),"the time between occurances was around",format(a,digits=3),"seconds\n")
