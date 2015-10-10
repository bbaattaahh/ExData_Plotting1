# 0. Set Your working direcrory 
setwd("c:\\Users\\Henrik\\Dropbox\\Coursera\\Exploratory Data Analysis\\Course Project 1\\ExData_Plotting1\\")

# 1. Load the prepared data to rawdata variable
source("get_prepared_data.R")

# 2. Reprodicing the plot

par(mfrow = c(2 , 2))
par(cex=0.5)

# 2.1. topleft 

y_gap <-rawdata$Global_active_power
x_dt <- rawdata$date_time

plot(x_dt, y_gap, xlab = "", ylab = "Global Active Power (kilowatts)", type = "solid")


# 2.2. topright 

y_vol <-rawdata$Voltage

plot(x_dt, y_vol, xlab = "datetime", ylab = "Voltage", type = "solid")



# 2.3. bottomleft 

y_sm_1 <-rawdata$Sub_metering_1
y_sm_2 <-rawdata$Sub_metering_2
y_sm_3 <-rawdata$Sub_metering_3
x_dt <- rawdata$date_time


plot (x_dt, y_sm_1, type="n", ylab="Energy sub metering", xlab = "")

lines(x_dt, y_sm_1, col="black")
lines(x_dt, y_sm_2, col="red")
lines(x_dt, y_sm_3, col="blue")


legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1, 1, 1), col=c("black","red", "blue"), bty = "n")


# 2.4. bottomright 

y_grp <-rawdata$Global_reactive_power

plot(x_dt, y_grp, xlab = "datetime", ylab = "Global_reactive_power", type = "solid")



# 3. Save the reasult to png file
dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()
