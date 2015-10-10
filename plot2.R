# 0. Set Your working direcrory 
setwd("c:\\Users\\Henrik\\Dropbox\\Coursera\\Exploratory Data Analysis\\Course Project 1\\ExData_Plotting1\\")

# 1. Load the prepared data to rawdata variable
source("get_prepared_data.R")

# 2. Reprodicing the plot
par(mfrow = c(1 , 1))
par(cex=0.55)
y_gap <-rawdata$Global_active_power
x_dt <- rawdata$date_time

plot(x_dt, y_gap, xlab = "", ylab = "Global Active Power (kilowatts)", type = "solid")


# 3. Save the reasult to png file
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()