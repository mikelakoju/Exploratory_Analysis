
source('Dataanalysis.R')

data2 <- loadData()

png(filename='/Users/mikelakoju/rstuff/householdPower/plot1.png', width=480, height=480, units='px')


hist(as.numeric(as.character(data2$Global_active_power)), # note we used as.character and as numeric since
     # the variable is factor variable.
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)", col="red")