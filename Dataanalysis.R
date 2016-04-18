#Read the data in to R
data<-read.table("household_power_consumption.txt",header = TRUE, sep= ";")

#Looking at the attributes of the datset
names(data)

lapply(data, class)

#Looking at the first few raws
data$Date[1:10]

# Let's use strptime to change the factor Date and Time values in to yyyy-mm-dd hh:mm:ss. 
# First, let's create a variables by concatenating Date and Time.
data$DateTime<-paste(data$Date, data$Time)

# Next chnage DateTime to yyyy-mm-dd hh:mm:ss
data$DateTime<-strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")

# Let's work with the data for dates 2007-02-01 and 2007-02-02.
start<-which(data$DateTime==strptime("2007-02-01", "%Y-%m-%d"))

end<-which(data$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))

data2<-data[start:end,]

# Now, we can plot some of the observations.


