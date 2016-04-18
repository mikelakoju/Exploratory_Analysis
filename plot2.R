
source('Dataanalysis.R')

data2 <- loadData()

png(filename='/Users/mikelakoju/rstuff/householdPower/plot2.png', width=480, height=480, units='px')


plot(data2$DateTime, as.numeric(as.character(data2$Global_active_power)),
     type='l',ylab="Global Active Power (Kilowatts)", xlab="")