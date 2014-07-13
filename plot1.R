# Loading the data into R
checkClasses <- read.table("/Users/martinnorgaard/Desktop/Coursera/Explanatory Data Analysis/Project 1/household_power_consumption.txt", sep = ";", nrows=1)
classes <- sapply(checkClasses, class)
mydata <- read.table("/Users/martinnorgaard/Desktop/Coursera/Explanatory Data Analysis/Project 1/household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# Plot 1
png("plot1.png", width = 480, height = 480)
hist(mydata[,3], main="Global Active Power", xlab="Global Active Power [kilowatts]",col="red")
dev.off()

