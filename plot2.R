# Loading the data into R
checkClasses <- read.table("/Users/martinnorgaard/Desktop/Coursera/Explanatory Data Analysis/Project 1/household_power_consumption.txt", sep = ";", nrows=1)
classes <- sapply(checkClasses, class)
mydata <- read.table("/Users/martinnorgaard/Desktop/Coursera/Explanatory Data Analysis/Project 1/household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# Plot 2
png("plot2.png", width = 480, height = 480)
names = c("Thu","Fri","Sat")
plot(mydata[,3],type='l', ylab="Global Active Power (kilowatts)", xaxt='n',xlab="")
axis(1,at=c(0,1441,2880), 
     labels=names)
dev.off()