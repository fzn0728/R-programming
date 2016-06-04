# Typically, there are two ways to create a Table from Data。
# If we import the file directly, and it is portable to convert into table:
smokerData <- read.csv(file='smoker.csv',sep=',',header=T)
summary(smokerData)
smoke <- table(smokerData$Smoke,smokerData$SES)
smoke

# Or we can create the table directly
smoke <- matrix(c(51,43,22,92,28,21,68,22,9),ncol=3,byrow=TRUE)
colnames(o) <- c("High","Low","Middle")
rownames(o) <- c("current","former","never")
smoke <- as.table(smoke)
smoke

# Tools for working with tables
barplot(smoke,legend=T,beside=T,main='Smoking Status')
plot(smoke,main='Smoking Status By Socioeconomic Status')

# Use margin command
margin.table(smoke)
margin.table(smoke,1)
margin.table(smoke,2)

# Calculate the proportions
smoke/margin.table(smoke)
# Or directly using:
prop.table(smoke)

# Calculate the Chi square
expected <- as.array(margin.table(smoke,1)) %*% t(as.array(margin.table(smoke,2))) / margin.table(smoke)
chi <- sum((expected - as.array(smoke))^2/expected)
chi
1-pchisq(chi,df=4)
