# Typically, there are two ways to create a Table from Data。
# If we import the file directly, and it is portable to convert into table:
smokerData <- read.csv(file='smoker.csv',sep=',',header=T)
summary(smokerData)
smoke <- table(smokerData$Smoke,smokerData$SES)
smoke

# Or we can create the table directly
smoke <- matrix(c(51,43,22,92,28,21,68,22,9),ncol=3,byrow=TRUE)
colnames(o) <- c("High","Low","Middle")
