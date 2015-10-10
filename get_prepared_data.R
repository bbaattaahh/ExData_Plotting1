# Libraries
library(lubridate)


## 1.Loading the data into expected format

# 1.1. Get the data

temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
rawdata <- read.csv(unz(temp, "household_power_consumption.txt"), sep = ";", header = TRUE, stringsAsFactors = FALSE)
unlink(temp)

# 1.2. Check the dimensios of date - Expected: 2,075,259 rows and 9 columns.
dim(rawdata)

# 1.3. Filter the data

rawdata <- rawdata[rawdata$Date == "1/2/2007"  | rawdata$Date == "2/2/2007", ]

# 1.4. Convert the Date and Time variables to Date/Time classes
date_time <- paste0(rawdata$Date, " ",rawdata$Time);
rawdata$date_time <- dmy_hms(date_time) ;

# 1.5. remove unnecessery variables
rm(temp)
rm(date_time)