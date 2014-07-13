# Loading the data into R
checkClasses <- read.table("/Users/martinnorgaard/Desktop/Coursera/Explanatory Data Analysis/Project 1/household_power_consumption.txt", sep = ";", nrows=1)
classes <- sapply(checkClasses, class)
mydata <- read.table("/Users/martinnorgaard/Desktop/Coursera/Explanatory Data Analysis/Project 1/household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# Plot 4
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
names = c("Thu","Fri","Sat")
plot(mydata[,3],type='l', ylab="Global Active Power", xaxt='n',xlab="")
axis(1,at=c(0,1441,2880), 
     labels=names)
plot(mydata[,5],type='l',ylab="Voltage",xaxt='n',xlab="datetime")
axis(1,at=c(0,1441,2880), 
     labels=names)
plot(mydata[,7],type="l",col="black",ylab="Energy sub metering", xaxt='n',xlab="")
lines(mydata[,8],type="l",col="red")
lines(mydata[,9],type="l",col="blue")
axis(1,at=c(0,1441,2880), 
     labels=names)
legend("topright",c(as.character(checkClasses[1,7]),as.character(checkClasses[1,8]),as.character(checkClasses[1,9])),lty=c(1,1),lwd=c(2.5,2.5),col=c("black","red","blue"))
plot(mydata[,4],type="l",col="black",ylab=as.character(checkClasses[1,4]), xaxt='n',xlab="datetime")
axis(1,at=c(0,1441,2880), 
     labels=names)
dev.off()


