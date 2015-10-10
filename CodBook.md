# About the R files

## plot1.R ... plot2.R

These files contains the code to reproduce the expected plots


## get_prepared_data

It downloads the expected data which was used to meke the plots. It loads tha data in "rawdata" dataframe variable. More over it gives an extra coloumn to the dataframe which contains the concatenated data and time. This script deletes the unused part of the data set (date != 2007-02-01 or date != 2007-02-02). 