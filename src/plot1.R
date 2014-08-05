source("env.R")

png(filename="plot1.png", width=480, height=480,bg = "white")
hist(epc_data$Global_a, col="#FF2500", main="Global Active Power", ylab = "Frequency", xlab="Global Active Power (kilowatts)")
dev.off()

