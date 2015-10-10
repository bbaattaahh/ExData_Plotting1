# 0. Set Your working direcrory 
setwd("c:\\Users\\Henrik\\Dropbox\\Coursera\\Exploratory Data Analysis\\Course Project 1\\ExData_Plotting1\\")

# 1. Load the prepared data to rawdata variable
source("get_prepared_data.R")

# 2. Reprodicing the plot
y_sm_1 <-rawdata$Sub_metering_1
y_sm_2 <-rawdata$Sub_metering_2
y_sm_3 <-rawdata$Sub_metering_3
x_dt <- rawdata$date_time

par(cex=0.6)


plot (x_dt, y_sm_1, type="n", ylab="Energy sub metering", xlab = "")

par(cex = 0.75)
lines(x_dt, y_sm_1, col="black")
lines(x_dt, y_sm_2, col="red")
lines(x_dt, y_sm_3, col="blue")


legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1, 1, 1), col=c("black","red", "blue"))


# 3. Save the reasult to png file
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()

