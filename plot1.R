# 0. Set Your working direcrory 
setwd("c:\\Users\\Henrik\\Dropbox\\Coursera\\Exploratory Data Analysis\\Course Project 1\\ExData_Plotting1\\")

# 1. Load the prepared data to rawdata variable
source("get_prepared_data.R")

# 2. Reprodicing the plot
global_active_power <- as.numeric(rawdata$Global_active_power)
hist(global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)");

# 3. Save the reasult to png file
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()